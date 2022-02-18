{
  description = ''A simple pomodoro timer for the comandline with cli-output and notifications.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."pomTimer-master".type = "github";
  inputs."pomTimer-master".owner = "riinr";
  inputs."pomTimer-master".repo = "flake-nimble";
  inputs."pomTimer-master".ref = "flake-pinning";
  inputs."pomTimer-master".dir = "nimpkgs/p/pomTimer/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}