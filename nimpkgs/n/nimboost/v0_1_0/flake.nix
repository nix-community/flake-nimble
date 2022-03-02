{
  description = ''Additions to the Nim's standard library, like boost for C++'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimboost-v0_1_0.flake = false;
  inputs.src-nimboost-v0_1_0.type = "github";
  inputs.src-nimboost-v0_1_0.owner = "vegansk";
  inputs.src-nimboost-v0_1_0.repo = "nimboost";
  inputs.src-nimboost-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-nimboost-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimboost-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimboost-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimboost-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}