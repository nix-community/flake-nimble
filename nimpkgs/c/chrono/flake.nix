{
  description = ''Calendars, Timestamps and Timezones utilities.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."chrono-master".type = "github";
  inputs."chrono-master".owner = "riinr";
  inputs."chrono-master".repo = "flake-nimble";
  inputs."chrono-master".ref = "flake-pinning";
  inputs."chrono-master".dir = "nimpkgs/c/chrono/master";
  inputs."chrono-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chrono-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."chrono-0_1_0".type = "github";
  inputs."chrono-0_1_0".owner = "riinr";
  inputs."chrono-0_1_0".repo = "flake-nimble";
  inputs."chrono-0_1_0".ref = "flake-pinning";
  inputs."chrono-0_1_0".dir = "nimpkgs/c/chrono/0_1_0";
  inputs."chrono-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chrono-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."chrono-0_2_0".type = "github";
  inputs."chrono-0_2_0".owner = "riinr";
  inputs."chrono-0_2_0".repo = "flake-nimble";
  inputs."chrono-0_2_0".ref = "flake-pinning";
  inputs."chrono-0_2_0".dir = "nimpkgs/c/chrono/0_2_0";
  inputs."chrono-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chrono-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."chrono-0_3_0".type = "github";
  inputs."chrono-0_3_0".owner = "riinr";
  inputs."chrono-0_3_0".repo = "flake-nimble";
  inputs."chrono-0_3_0".ref = "flake-pinning";
  inputs."chrono-0_3_0".dir = "nimpkgs/c/chrono/0_3_0";
  inputs."chrono-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chrono-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."chrono-v0_1_0".type = "github";
  inputs."chrono-v0_1_0".owner = "riinr";
  inputs."chrono-v0_1_0".repo = "flake-nimble";
  inputs."chrono-v0_1_0".ref = "flake-pinning";
  inputs."chrono-v0_1_0".dir = "nimpkgs/c/chrono/v0_1_0";
  inputs."chrono-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chrono-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}