{
  description = ''Web Technologies based Crossplatform GUI Framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."crowngui-master".type = "github";
  inputs."crowngui-master".owner = "riinr";
  inputs."crowngui-master".repo = "flake-nimble";
  inputs."crowngui-master".ref = "flake-pinning";
  inputs."crowngui-master".dir = "nimpkgs/c/crowngui/master";
  inputs."crowngui-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crowngui-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."crowngui-v0_2_3".type = "github";
  inputs."crowngui-v0_2_3".owner = "riinr";
  inputs."crowngui-v0_2_3".repo = "flake-nimble";
  inputs."crowngui-v0_2_3".ref = "flake-pinning";
  inputs."crowngui-v0_2_3".dir = "nimpkgs/c/crowngui/v0_2_3";
  inputs."crowngui-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crowngui-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."crowngui-v0_2_4".type = "github";
  inputs."crowngui-v0_2_4".owner = "riinr";
  inputs."crowngui-v0_2_4".repo = "flake-nimble";
  inputs."crowngui-v0_2_4".ref = "flake-pinning";
  inputs."crowngui-v0_2_4".dir = "nimpkgs/c/crowngui/v0_2_4";
  inputs."crowngui-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crowngui-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."crowngui-v0_2_7".type = "github";
  inputs."crowngui-v0_2_7".owner = "riinr";
  inputs."crowngui-v0_2_7".repo = "flake-nimble";
  inputs."crowngui-v0_2_7".ref = "flake-pinning";
  inputs."crowngui-v0_2_7".dir = "nimpkgs/c/crowngui/v0_2_7";
  inputs."crowngui-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crowngui-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."crowngui-v0_2_8".type = "github";
  inputs."crowngui-v0_2_8".owner = "riinr";
  inputs."crowngui-v0_2_8".repo = "flake-nimble";
  inputs."crowngui-v0_2_8".ref = "flake-pinning";
  inputs."crowngui-v0_2_8".dir = "nimpkgs/c/crowngui/v0_2_8";
  inputs."crowngui-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crowngui-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."crowngui-v0_2_9".type = "github";
  inputs."crowngui-v0_2_9".owner = "riinr";
  inputs."crowngui-v0_2_9".repo = "flake-nimble";
  inputs."crowngui-v0_2_9".ref = "flake-pinning";
  inputs."crowngui-v0_2_9".dir = "nimpkgs/c/crowngui/v0_2_9";
  inputs."crowngui-v0_2_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crowngui-v0_2_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}