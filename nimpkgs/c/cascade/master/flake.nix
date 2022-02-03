{
  description = ''Method & assignment cascades for Nim, inspired by Smalltalk & Dart.'';
  inputs.src-cascade-master.flake = false;
  inputs.src-cascade-master.type = "github";
  inputs.src-cascade-master.owner = "citycide";
  inputs.src-cascade-master.repo = "cascade";
  inputs.src-cascade-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-cascade-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cascade-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cascade-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}