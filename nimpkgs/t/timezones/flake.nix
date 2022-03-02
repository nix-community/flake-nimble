{
  description = ''Timezone library compatible with the standard library. '';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."timezones-master".type = "github";
  inputs."timezones-master".owner = "riinr";
  inputs."timezones-master".repo = "flake-nimble";
  inputs."timezones-master".ref = "flake-pinning";
  inputs."timezones-master".dir = "nimpkgs/t/timezones/master";
  inputs."timezones-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."timezones-v0_2_0".type = "github";
  inputs."timezones-v0_2_0".owner = "riinr";
  inputs."timezones-v0_2_0".repo = "flake-nimble";
  inputs."timezones-v0_2_0".ref = "flake-pinning";
  inputs."timezones-v0_2_0".dir = "nimpkgs/t/timezones/v0_2_0";
  inputs."timezones-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."timezones-v0_2_1".type = "github";
  inputs."timezones-v0_2_1".owner = "riinr";
  inputs."timezones-v0_2_1".repo = "flake-nimble";
  inputs."timezones-v0_2_1".ref = "flake-pinning";
  inputs."timezones-v0_2_1".dir = "nimpkgs/t/timezones/v0_2_1";
  inputs."timezones-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."timezones-v0_3_0".type = "github";
  inputs."timezones-v0_3_0".owner = "riinr";
  inputs."timezones-v0_3_0".repo = "flake-nimble";
  inputs."timezones-v0_3_0".ref = "flake-pinning";
  inputs."timezones-v0_3_0".dir = "nimpkgs/t/timezones/v0_3_0";
  inputs."timezones-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."timezones-v0_4_0".type = "github";
  inputs."timezones-v0_4_0".owner = "riinr";
  inputs."timezones-v0_4_0".repo = "flake-nimble";
  inputs."timezones-v0_4_0".ref = "flake-pinning";
  inputs."timezones-v0_4_0".dir = "nimpkgs/t/timezones/v0_4_0";
  inputs."timezones-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."timezones-v0_4_1".type = "github";
  inputs."timezones-v0_4_1".owner = "riinr";
  inputs."timezones-v0_4_1".repo = "flake-nimble";
  inputs."timezones-v0_4_1".ref = "flake-pinning";
  inputs."timezones-v0_4_1".dir = "nimpkgs/t/timezones/v0_4_1";
  inputs."timezones-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."timezones-v0_4_2".type = "github";
  inputs."timezones-v0_4_2".owner = "riinr";
  inputs."timezones-v0_4_2".repo = "flake-nimble";
  inputs."timezones-v0_4_2".ref = "flake-pinning";
  inputs."timezones-v0_4_2".dir = "nimpkgs/t/timezones/v0_4_2";
  inputs."timezones-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."timezones-v0_4_3".type = "github";
  inputs."timezones-v0_4_3".owner = "riinr";
  inputs."timezones-v0_4_3".repo = "flake-nimble";
  inputs."timezones-v0_4_3".ref = "flake-pinning";
  inputs."timezones-v0_4_3".dir = "nimpkgs/t/timezones/v0_4_3";
  inputs."timezones-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."timezones-v0_5_0".type = "github";
  inputs."timezones-v0_5_0".owner = "riinr";
  inputs."timezones-v0_5_0".repo = "flake-nimble";
  inputs."timezones-v0_5_0".ref = "flake-pinning";
  inputs."timezones-v0_5_0".dir = "nimpkgs/t/timezones/v0_5_0";
  inputs."timezones-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."timezones-v0_5_1".type = "github";
  inputs."timezones-v0_5_1".owner = "riinr";
  inputs."timezones-v0_5_1".repo = "flake-nimble";
  inputs."timezones-v0_5_1".ref = "flake-pinning";
  inputs."timezones-v0_5_1".dir = "nimpkgs/t/timezones/v0_5_1";
  inputs."timezones-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."timezones-v0_5_2".type = "github";
  inputs."timezones-v0_5_2".owner = "riinr";
  inputs."timezones-v0_5_2".repo = "flake-nimble";
  inputs."timezones-v0_5_2".ref = "flake-pinning";
  inputs."timezones-v0_5_2".dir = "nimpkgs/t/timezones/v0_5_2";
  inputs."timezones-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."timezones-v0_5_3".type = "github";
  inputs."timezones-v0_5_3".owner = "riinr";
  inputs."timezones-v0_5_3".repo = "flake-nimble";
  inputs."timezones-v0_5_3".ref = "flake-pinning";
  inputs."timezones-v0_5_3".dir = "nimpkgs/t/timezones/v0_5_3";
  inputs."timezones-v0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."timezones-v0_5_4".type = "github";
  inputs."timezones-v0_5_4".owner = "riinr";
  inputs."timezones-v0_5_4".repo = "flake-nimble";
  inputs."timezones-v0_5_4".ref = "flake-pinning";
  inputs."timezones-v0_5_4".dir = "nimpkgs/t/timezones/v0_5_4";
  inputs."timezones-v0_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}