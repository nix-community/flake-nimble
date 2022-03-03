{
  description = ''Redis connection pool'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-redpool-master.flake = false;
  inputs.src-redpool-master.type = "github";
  inputs.src-redpool-master.owner = "zedeus";
  inputs.src-redpool-master.repo = "redpool";
  inputs.src-redpool-master.ref = "refs/heads/master";
  inputs.src-redpool-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."https://github.com/zedeus/redis".type = "github";
  # inputs."https://github.com/zedeus/redis".owner = "riinr";
  # inputs."https://github.com/zedeus/redis".repo = "flake-nimble";
  # inputs."https://github.com/zedeus/redis".ref = "flake-pinning";
  # inputs."https://github.com/zedeus/redis".dir = "nimpkgs/h/https://github.com/zedeus/redis";
  # inputs."https://github.com/zedeus/redis".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/zedeus/redis".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-redpool-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redpool-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-redpool-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}