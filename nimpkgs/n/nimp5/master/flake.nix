{
  description = ''Nim bindings for p5.js.'';
  inputs.src-nimp5-master.flake = false;
  inputs.src-nimp5-master.type = "github";
  inputs.src-nimp5-master.owner = "Foldover";
  inputs.src-nimp5-master.repo = "nim-p5";
  inputs.src-nimp5-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimp5-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimp5-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimp5-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}