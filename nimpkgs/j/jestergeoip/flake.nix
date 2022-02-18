{
  description = ''A Jester web plugin that determines geographic information for each web request via API. Uses sqlite3 for a cache.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."jestergeoip-master".type = "github";
  inputs."jestergeoip-master".owner = "riinr";
  inputs."jestergeoip-master".repo = "flake-nimble";
  inputs."jestergeoip-master".ref = "flake-pinning";
  inputs."jestergeoip-master".dir = "nimpkgs/j/jestergeoip/master";

    inputs."jestergeoip-v1_0_1".type = "github";
  inputs."jestergeoip-v1_0_1".owner = "riinr";
  inputs."jestergeoip-v1_0_1".repo = "flake-nimble";
  inputs."jestergeoip-v1_0_1".ref = "flake-pinning";
  inputs."jestergeoip-v1_0_1".dir = "nimpkgs/j/jestergeoip/v1_0_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}