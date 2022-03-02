{
  description = ''Simple watchdog (watch file changes modified, deleted, created) in nim lang.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nwatchdog-master".type = "github";
  inputs."nwatchdog-master".owner = "riinr";
  inputs."nwatchdog-master".repo = "flake-nimble";
  inputs."nwatchdog-master".ref = "flake-pinning";
  inputs."nwatchdog-master".dir = "nimpkgs/n/nwatchdog/master";
  inputs."nwatchdog-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwatchdog-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nwatchdog-0_0_5".type = "github";
  inputs."nwatchdog-0_0_5".owner = "riinr";
  inputs."nwatchdog-0_0_5".repo = "flake-nimble";
  inputs."nwatchdog-0_0_5".ref = "flake-pinning";
  inputs."nwatchdog-0_0_5".dir = "nimpkgs/n/nwatchdog/0_0_5";
  inputs."nwatchdog-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwatchdog-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nwatchdog-0_0_7".type = "github";
  inputs."nwatchdog-0_0_7".owner = "riinr";
  inputs."nwatchdog-0_0_7".repo = "flake-nimble";
  inputs."nwatchdog-0_0_7".ref = "flake-pinning";
  inputs."nwatchdog-0_0_7".dir = "nimpkgs/n/nwatchdog/0_0_7";
  inputs."nwatchdog-0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwatchdog-0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nwatchdog-v0_0_7".type = "github";
  inputs."nwatchdog-v0_0_7".owner = "riinr";
  inputs."nwatchdog-v0_0_7".repo = "flake-nimble";
  inputs."nwatchdog-v0_0_7".ref = "flake-pinning";
  inputs."nwatchdog-v0_0_7".dir = "nimpkgs/n/nwatchdog/v0_0_7";
  inputs."nwatchdog-v0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwatchdog-v0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nwatchdog-v0_0_8".type = "github";
  inputs."nwatchdog-v0_0_8".owner = "riinr";
  inputs."nwatchdog-v0_0_8".repo = "flake-nimble";
  inputs."nwatchdog-v0_0_8".ref = "flake-pinning";
  inputs."nwatchdog-v0_0_8".dir = "nimpkgs/n/nwatchdog/v0_0_8";
  inputs."nwatchdog-v0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwatchdog-v0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}