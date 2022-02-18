{
  description = ''A Nim-based, non-graphical application designed to measure the amount of time elapsed from its activation to deactivation, includes total elapsed time, lap, and split times.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimstopwatch-master".type = "github";
  inputs."nimstopwatch-master".owner = "riinr";
  inputs."nimstopwatch-master".repo = "flake-nimble";
  inputs."nimstopwatch-master".ref = "flake-pinning";
  inputs."nimstopwatch-master".dir = "nimpkgs/n/nimstopwatch/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}