{
  description = ''HPACK (Header Compression for HTTP/2)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."hpack-master".type = "github";
  inputs."hpack-master".owner = "riinr";
  inputs."hpack-master".repo = "flake-nimble";
  inputs."hpack-master".ref = "flake-pinning";
  inputs."hpack-master".dir = "nimpkgs/h/hpack/master";
  inputs."hpack-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpack-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hpack-v0_1".type = "github";
  inputs."hpack-v0_1".owner = "riinr";
  inputs."hpack-v0_1".repo = "flake-nimble";
  inputs."hpack-v0_1".ref = "flake-pinning";
  inputs."hpack-v0_1".dir = "nimpkgs/h/hpack/v0_1";
  inputs."hpack-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpack-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hpack-v0_1_1".type = "github";
  inputs."hpack-v0_1_1".owner = "riinr";
  inputs."hpack-v0_1_1".repo = "flake-nimble";
  inputs."hpack-v0_1_1".ref = "flake-pinning";
  inputs."hpack-v0_1_1".dir = "nimpkgs/h/hpack/v0_1_1";
  inputs."hpack-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpack-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hpack-v0_2_0".type = "github";
  inputs."hpack-v0_2_0".owner = "riinr";
  inputs."hpack-v0_2_0".repo = "flake-nimble";
  inputs."hpack-v0_2_0".ref = "flake-pinning";
  inputs."hpack-v0_2_0".dir = "nimpkgs/h/hpack/v0_2_0";
  inputs."hpack-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpack-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}