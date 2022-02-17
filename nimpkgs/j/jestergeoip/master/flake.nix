{
  description = ''A Jester web plugin that determines geographic information for each web request via API. Uses sqlite3 for a cache.'';
  inputs.src-jestergeoip-master.flake = false;
  inputs.src-jestergeoip-master.type = "github";
  inputs.src-jestergeoip-master.owner = "JohnAD";
  inputs.src-jestergeoip-master.repo = "jestergeoip";
  inputs.src-jestergeoip-master.ref = "refs/heads/master";
  
  
  inputs."jesterwithplugins".type = "github";
  inputs."jesterwithplugins".owner = "riinr";
  inputs."jesterwithplugins".repo = "flake-nimble";
  inputs."jesterwithplugins".ref = "flake-pinning";
  inputs."jesterwithplugins".dir = "nimpkgs/j/jesterwithplugins";

  outputs = { self, nixpkgs, src-jestergeoip-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jestergeoip-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jestergeoip-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}