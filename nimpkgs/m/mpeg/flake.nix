{
  description = ''Nim wrapper for pl_mpeg single header mpeg library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."mpeg-master".type = "github";
  inputs."mpeg-master".owner = "riinr";
  inputs."mpeg-master".repo = "flake-nimble";
  inputs."mpeg-master".ref = "flake-pinning";
  inputs."mpeg-master".dir = "nimpkgs/m/mpeg/master";
  inputs."mpeg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpeg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mpeg-v0_1_1".type = "github";
  inputs."mpeg-v0_1_1".owner = "riinr";
  inputs."mpeg-v0_1_1".repo = "flake-nimble";
  inputs."mpeg-v0_1_1".ref = "flake-pinning";
  inputs."mpeg-v0_1_1".dir = "nimpkgs/m/mpeg/v0_1_1";
  inputs."mpeg-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpeg-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}