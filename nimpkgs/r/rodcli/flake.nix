{
  description = ''making Nim development easier in the command-line'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."rodcli-master".type = "github";
  inputs."rodcli-master".owner = "riinr";
  inputs."rodcli-master".repo = "flake-nimble";
  inputs."rodcli-master".ref = "flake-pinning";
  inputs."rodcli-master".dir = "nimpkgs/r/rodcli/master";
  inputs."rodcli-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodcli-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rodcli-v0_1_2".type = "github";
  inputs."rodcli-v0_1_2".owner = "riinr";
  inputs."rodcli-v0_1_2".repo = "flake-nimble";
  inputs."rodcli-v0_1_2".ref = "flake-pinning";
  inputs."rodcli-v0_1_2".dir = "nimpkgs/r/rodcli/v0_1_2";
  inputs."rodcli-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodcli-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rodcli-v0_1_3".type = "github";
  inputs."rodcli-v0_1_3".owner = "riinr";
  inputs."rodcli-v0_1_3".repo = "flake-nimble";
  inputs."rodcli-v0_1_3".ref = "flake-pinning";
  inputs."rodcli-v0_1_3".dir = "nimpkgs/r/rodcli/v0_1_3";
  inputs."rodcli-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodcli-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rodcli-v0_1_4".type = "github";
  inputs."rodcli-v0_1_4".owner = "riinr";
  inputs."rodcli-v0_1_4".repo = "flake-nimble";
  inputs."rodcli-v0_1_4".ref = "flake-pinning";
  inputs."rodcli-v0_1_4".dir = "nimpkgs/r/rodcli/v0_1_4";
  inputs."rodcli-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodcli-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rodcli-v0_1_5".type = "github";
  inputs."rodcli-v0_1_5".owner = "riinr";
  inputs."rodcli-v0_1_5".repo = "flake-nimble";
  inputs."rodcli-v0_1_5".ref = "flake-pinning";
  inputs."rodcli-v0_1_5".dir = "nimpkgs/r/rodcli/v0_1_5";
  inputs."rodcli-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodcli-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rodcli-v0_1_6".type = "github";
  inputs."rodcli-v0_1_6".owner = "riinr";
  inputs."rodcli-v0_1_6".repo = "flake-nimble";
  inputs."rodcli-v0_1_6".ref = "flake-pinning";
  inputs."rodcli-v0_1_6".dir = "nimpkgs/r/rodcli/v0_1_6";
  inputs."rodcli-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodcli-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rodcli-v0_1_7".type = "github";
  inputs."rodcli-v0_1_7".owner = "riinr";
  inputs."rodcli-v0_1_7".repo = "flake-nimble";
  inputs."rodcli-v0_1_7".ref = "flake-pinning";
  inputs."rodcli-v0_1_7".dir = "nimpkgs/r/rodcli/v0_1_7";
  inputs."rodcli-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodcli-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rodcli-v0_1_8".type = "github";
  inputs."rodcli-v0_1_8".owner = "riinr";
  inputs."rodcli-v0_1_8".repo = "flake-nimble";
  inputs."rodcli-v0_1_8".ref = "flake-pinning";
  inputs."rodcli-v0_1_8".dir = "nimpkgs/r/rodcli/v0_1_8";
  inputs."rodcli-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodcli-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rodcli-v0_1_9".type = "github";
  inputs."rodcli-v0_1_9".owner = "riinr";
  inputs."rodcli-v0_1_9".repo = "flake-nimble";
  inputs."rodcli-v0_1_9".ref = "flake-pinning";
  inputs."rodcli-v0_1_9".dir = "nimpkgs/r/rodcli/v0_1_9";
  inputs."rodcli-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodcli-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}