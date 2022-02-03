{
  description = ''Method & assignment cascades for Nim, inspired by Smalltalk & Dart.'';
  inputs.src-cascade-v0_2_0.flake = false;
  inputs.src-cascade-v0_2_0.type = "github";
  inputs.src-cascade-v0_2_0.owner = "citycide";
  inputs.src-cascade-v0_2_0.repo = "cascade";
  inputs.src-cascade-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-cascade-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cascade-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cascade-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}