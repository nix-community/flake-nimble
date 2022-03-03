{
  description = ''Nim wrapper around the ngtcp2 library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ngtcp2-main".type = "github";
  inputs."ngtcp2-main".owner = "riinr";
  inputs."ngtcp2-main".repo = "flake-nimble";
  inputs."ngtcp2-main".ref = "flake-pinning";
  inputs."ngtcp2-main".dir = "nimpkgs/n/ngtcp2/main";
  inputs."ngtcp2-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ngtcp2-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ngtcp2-0_32_0".type = "github";
  inputs."ngtcp2-0_32_0".owner = "riinr";
  inputs."ngtcp2-0_32_0".repo = "flake-nimble";
  inputs."ngtcp2-0_32_0".ref = "flake-pinning";
  inputs."ngtcp2-0_32_0".dir = "nimpkgs/n/ngtcp2/0_32_0";
  inputs."ngtcp2-0_32_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ngtcp2-0_32_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}