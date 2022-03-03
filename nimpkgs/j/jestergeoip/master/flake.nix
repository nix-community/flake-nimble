{
  description = ''A Jester web plugin that determines geographic information for each web request via API. Uses sqlite3 for a cache.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-jestergeoip-master.flake = false;
  inputs.src-jestergeoip-master.type = "github";
  inputs.src-jestergeoip-master.owner = "JohnAD";
  inputs.src-jestergeoip-master.repo = "jestergeoip";
  inputs.src-jestergeoip-master.ref = "refs/heads/master";
  inputs.src-jestergeoip-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."jesterwithplugins".type = "github";
  # inputs."jesterwithplugins".owner = "riinr";
  # inputs."jesterwithplugins".repo = "flake-nimble";
  # inputs."jesterwithplugins".ref = "flake-pinning";
  # inputs."jesterwithplugins".dir = "nimpkgs/j/jesterwithplugins";
  # inputs."jesterwithplugins".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."jesterwithplugins".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-jestergeoip-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jestergeoip-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jestergeoip-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}