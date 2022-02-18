{
  description = ''Redis client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-redisclient-master.flake = false;
  inputs.src-redisclient-master.type = "github";
  inputs.src-redisclient-master.owner = "xmonader";
  inputs.src-redisclient-master.repo = "nim-redisclient";
  inputs.src-redisclient-master.ref = "refs/heads/master";
  
  
  inputs."redisparser".type = "github";
  inputs."redisparser".owner = "riinr";
  inputs."redisparser".repo = "flake-nimble";
  inputs."redisparser".ref = "flake-pinning";
  inputs."redisparser".dir = "nimpkgs/r/redisparser";

  outputs = { self, nixpkgs, flakeNimbleLib, src-redisclient-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redisclient-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-redisclient-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}