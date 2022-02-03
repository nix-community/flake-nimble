{
  description = ''Simple package for query HTML/XML elements using a CSS3 or jQuery-like selector syntax'';
  inputs.src-q-0_0_7.flake = false;
  inputs.src-q-0_0_7.type = "github";
  inputs.src-q-0_0_7.owner = "OpenSystemsLab";
  inputs.src-q-0_0_7.repo = "q.nim";
  inputs.src-q-0_0_7.ref = "refs/tags/0.0.7";
  
  outputs = { self, nixpkgs, src-q-0_0_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-q-0_0_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-q-0_0_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}