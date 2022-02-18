{
  description = ''A Jester web plugin that determines geographic information for each web request via API. Uses sqlite3 for a cache.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-jestergeoip-v1_0_1.flake = false;
  inputs.src-jestergeoip-v1_0_1.type = "github";
  inputs.src-jestergeoip-v1_0_1.owner = "JohnAD";
  inputs.src-jestergeoip-v1_0_1.repo = "jestergeoip";
  inputs.src-jestergeoip-v1_0_1.ref = "refs/tags/v1.0.1";
  
  
  inputs."jesterwithplugins".type = "github";
  inputs."jesterwithplugins".owner = "riinr";
  inputs."jesterwithplugins".repo = "flake-nimble";
  inputs."jesterwithplugins".ref = "flake-pinning";
  inputs."jesterwithplugins".dir = "nimpkgs/j/jesterwithplugins";

  outputs = { self, nixpkgs, flakeNimbleLib, src-jestergeoip-v1_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jestergeoip-v1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jestergeoip-v1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}