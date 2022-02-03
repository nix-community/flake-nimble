{
  description = ''Simple package for query HTML/XML elements using a CSS3 or jQuery-like selector syntax'';
  inputs.src-q-master.flake = false;
  inputs.src-q-master.type = "github";
  inputs.src-q-master.owner = "OpenSystemsLab";
  inputs.src-q-master.repo = "q.nim";
  inputs.src-q-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-q-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-q-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-q-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}