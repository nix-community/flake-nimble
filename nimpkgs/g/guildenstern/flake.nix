{
  description = ''Modular multithreading Linux HTTP server'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."guildenstern-master".type = "github";
  inputs."guildenstern-master".owner = "riinr";
  inputs."guildenstern-master".repo = "flake-nimble";
  inputs."guildenstern-master".ref = "flake-pinning";
  inputs."guildenstern-master".dir = "nimpkgs/g/guildenstern/master";
  inputs."guildenstern-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."guildenstern-0_7".type = "github";
  inputs."guildenstern-0_7".owner = "riinr";
  inputs."guildenstern-0_7".repo = "flake-nimble";
  inputs."guildenstern-0_7".ref = "flake-pinning";
  inputs."guildenstern-0_7".dir = "nimpkgs/g/guildenstern/0_7";
  inputs."guildenstern-0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."guildenstern-0_8".type = "github";
  inputs."guildenstern-0_8".owner = "riinr";
  inputs."guildenstern-0_8".repo = "flake-nimble";
  inputs."guildenstern-0_8".ref = "flake-pinning";
  inputs."guildenstern-0_8".dir = "nimpkgs/g/guildenstern/0_8";
  inputs."guildenstern-0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."guildenstern-0_9".type = "github";
  inputs."guildenstern-0_9".owner = "riinr";
  inputs."guildenstern-0_9".repo = "flake-nimble";
  inputs."guildenstern-0_9".ref = "flake-pinning";
  inputs."guildenstern-0_9".dir = "nimpkgs/g/guildenstern/0_9";
  inputs."guildenstern-0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."guildenstern-1_0_0".type = "github";
  inputs."guildenstern-1_0_0".owner = "riinr";
  inputs."guildenstern-1_0_0".repo = "flake-nimble";
  inputs."guildenstern-1_0_0".ref = "flake-pinning";
  inputs."guildenstern-1_0_0".dir = "nimpkgs/g/guildenstern/1_0_0";
  inputs."guildenstern-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."guildenstern-1_0_1".type = "github";
  inputs."guildenstern-1_0_1".owner = "riinr";
  inputs."guildenstern-1_0_1".repo = "flake-nimble";
  inputs."guildenstern-1_0_1".ref = "flake-pinning";
  inputs."guildenstern-1_0_1".dir = "nimpkgs/g/guildenstern/1_0_1";
  inputs."guildenstern-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."guildenstern-2_0_0".type = "github";
  inputs."guildenstern-2_0_0".owner = "riinr";
  inputs."guildenstern-2_0_0".repo = "flake-nimble";
  inputs."guildenstern-2_0_0".ref = "flake-pinning";
  inputs."guildenstern-2_0_0".dir = "nimpkgs/g/guildenstern/2_0_0";
  inputs."guildenstern-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."guildenstern-3_0_0".type = "github";
  inputs."guildenstern-3_0_0".owner = "riinr";
  inputs."guildenstern-3_0_0".repo = "flake-nimble";
  inputs."guildenstern-3_0_0".ref = "flake-pinning";
  inputs."guildenstern-3_0_0".dir = "nimpkgs/g/guildenstern/3_0_0";
  inputs."guildenstern-3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."guildenstern-3_1_0".type = "github";
  inputs."guildenstern-3_1_0".owner = "riinr";
  inputs."guildenstern-3_1_0".repo = "flake-nimble";
  inputs."guildenstern-3_1_0".ref = "flake-pinning";
  inputs."guildenstern-3_1_0".dir = "nimpkgs/g/guildenstern/3_1_0";
  inputs."guildenstern-3_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-3_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."guildenstern-4_0_0".type = "github";
  inputs."guildenstern-4_0_0".owner = "riinr";
  inputs."guildenstern-4_0_0".repo = "flake-nimble";
  inputs."guildenstern-4_0_0".ref = "flake-pinning";
  inputs."guildenstern-4_0_0".dir = "nimpkgs/g/guildenstern/4_0_0";
  inputs."guildenstern-4_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-4_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."guildenstern-4_0_0-rc1".type = "github";
  inputs."guildenstern-4_0_0-rc1".owner = "riinr";
  inputs."guildenstern-4_0_0-rc1".repo = "flake-nimble";
  inputs."guildenstern-4_0_0-rc1".ref = "flake-pinning";
  inputs."guildenstern-4_0_0-rc1".dir = "nimpkgs/g/guildenstern/4_0_0-rc1";
  inputs."guildenstern-4_0_0-rc1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-4_0_0-rc1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."guildenstern-5_0_0".type = "github";
  inputs."guildenstern-5_0_0".owner = "riinr";
  inputs."guildenstern-5_0_0".repo = "flake-nimble";
  inputs."guildenstern-5_0_0".ref = "flake-pinning";
  inputs."guildenstern-5_0_0".dir = "nimpkgs/g/guildenstern/5_0_0";
  inputs."guildenstern-5_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-5_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."guildenstern-5_1_0".type = "github";
  inputs."guildenstern-5_1_0".owner = "riinr";
  inputs."guildenstern-5_1_0".repo = "flake-nimble";
  inputs."guildenstern-5_1_0".ref = "flake-pinning";
  inputs."guildenstern-5_1_0".dir = "nimpkgs/g/guildenstern/5_1_0";
  inputs."guildenstern-5_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-5_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}