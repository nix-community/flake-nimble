{
  description = ''A wrapper to notification libraries'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."notify-master".type = "github";
  inputs."notify-master".owner = "riinr";
  inputs."notify-master".repo = "flake-nimble";
  inputs."notify-master".ref = "flake-pinning";
  inputs."notify-master".dir = "nimpkgs/n/notify/master";
  inputs."notify-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notify-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."notify-0_1_0".type = "github";
  inputs."notify-0_1_0".owner = "riinr";
  inputs."notify-0_1_0".repo = "flake-nimble";
  inputs."notify-0_1_0".ref = "flake-pinning";
  inputs."notify-0_1_0".dir = "nimpkgs/n/notify/0_1_0";
  inputs."notify-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notify-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."notify-0_1_1".type = "github";
  inputs."notify-0_1_1".owner = "riinr";
  inputs."notify-0_1_1".repo = "flake-nimble";
  inputs."notify-0_1_1".ref = "flake-pinning";
  inputs."notify-0_1_1".dir = "nimpkgs/n/notify/0_1_1";
  inputs."notify-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notify-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."notify-0_1_2".type = "github";
  inputs."notify-0_1_2".owner = "riinr";
  inputs."notify-0_1_2".repo = "flake-nimble";
  inputs."notify-0_1_2".ref = "flake-pinning";
  inputs."notify-0_1_2".dir = "nimpkgs/n/notify/0_1_2";
  inputs."notify-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notify-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."notify-0_1_4".type = "github";
  inputs."notify-0_1_4".owner = "riinr";
  inputs."notify-0_1_4".repo = "flake-nimble";
  inputs."notify-0_1_4".ref = "flake-pinning";
  inputs."notify-0_1_4".dir = "nimpkgs/n/notify/0_1_4";
  inputs."notify-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notify-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."notify-0_1_5".type = "github";
  inputs."notify-0_1_5".owner = "riinr";
  inputs."notify-0_1_5".repo = "flake-nimble";
  inputs."notify-0_1_5".ref = "flake-pinning";
  inputs."notify-0_1_5".dir = "nimpkgs/n/notify/0_1_5";
  inputs."notify-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notify-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}