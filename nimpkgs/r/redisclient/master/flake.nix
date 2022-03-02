{
  description = ''Redis client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-redisclient-master.flake = false;
  inputs.src-redisclient-master.type = "github";
  inputs.src-redisclient-master.owner = "xmonader";
  inputs.src-redisclient-master.repo = "nim-redisclient";
  inputs.src-redisclient-master.ref = "refs/heads/master";
  inputs.src-redisclient-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."redisparser".type = "github";
  # inputs."redisparser".owner = "riinr";
  # inputs."redisparser".repo = "flake-nimble";
  # inputs."redisparser".ref = "flake-pinning";
  # inputs."redisparser".dir = "nimpkgs/r/redisparser";
  # inputs."redisparser".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."redisparser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-redisclient-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redisclient-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-redisclient-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}