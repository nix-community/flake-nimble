{
  description = ''Low-level twitter API wrapper library for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."twitter-master".type = "github";
  inputs."twitter-master".owner = "riinr";
  inputs."twitter-master".repo = "flake-nimble";
  inputs."twitter-master".ref = "flake-pinning";
  inputs."twitter-master".dir = "nimpkgs/t/twitter/master";

    inputs."twitter-1_0_0".type = "github";
  inputs."twitter-1_0_0".owner = "riinr";
  inputs."twitter-1_0_0".repo = "flake-nimble";
  inputs."twitter-1_0_0".ref = "flake-pinning";
  inputs."twitter-1_0_0".dir = "nimpkgs/t/twitter/1_0_0";

    inputs."twitter-1_0_1".type = "github";
  inputs."twitter-1_0_1".owner = "riinr";
  inputs."twitter-1_0_1".repo = "flake-nimble";
  inputs."twitter-1_0_1".ref = "flake-pinning";
  inputs."twitter-1_0_1".dir = "nimpkgs/t/twitter/1_0_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}