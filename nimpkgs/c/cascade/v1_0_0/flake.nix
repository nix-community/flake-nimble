{
  description = ''Method & assignment cascades for Nim, inspired by Smalltalk & Dart.'';
  inputs.src-cascade-v1_0_0.flake = false;
  inputs.src-cascade-v1_0_0.type = "github";
  inputs.src-cascade-v1_0_0.owner = "haltcase";
  inputs.src-cascade-v1_0_0.repo = "cascade";
  inputs.src-cascade-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, src-cascade-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cascade-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cascade-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}