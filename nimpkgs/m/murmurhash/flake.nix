{
  description = ''Pure nim implementation of MurmurHash'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."murmurhash-master".type = "github";
  inputs."murmurhash-master".owner = "riinr";
  inputs."murmurhash-master".repo = "flake-nimble";
  inputs."murmurhash-master".ref = "flake-pinning";
  inputs."murmurhash-master".dir = "nimpkgs/m/murmurhash/master";
  inputs."murmurhash-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."murmurhash-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."murmurhash-0_3_0".type = "github";
  inputs."murmurhash-0_3_0".owner = "riinr";
  inputs."murmurhash-0_3_0".repo = "flake-nimble";
  inputs."murmurhash-0_3_0".ref = "flake-pinning";
  inputs."murmurhash-0_3_0".dir = "nimpkgs/m/murmurhash/0_3_0";
  inputs."murmurhash-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."murmurhash-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."murmurhash-0_4_0".type = "github";
  inputs."murmurhash-0_4_0".owner = "riinr";
  inputs."murmurhash-0_4_0".repo = "flake-nimble";
  inputs."murmurhash-0_4_0".ref = "flake-pinning";
  inputs."murmurhash-0_4_0".dir = "nimpkgs/m/murmurhash/0_4_0";
  inputs."murmurhash-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."murmurhash-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}