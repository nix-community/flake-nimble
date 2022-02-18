{
  description = ''Method & assignment cascades for Nim, inspired by Smalltalk & Dart.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-cascade-v1_0_0.flake = false;
  inputs.src-cascade-v1_0_0.type = "github";
  inputs.src-cascade-v1_0_0.owner = "haltcase";
  inputs.src-cascade-v1_0_0.repo = "cascade";
  inputs.src-cascade-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cascade-v1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cascade-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cascade-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}