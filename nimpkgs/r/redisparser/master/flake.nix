{
  description = ''RESP(REdis Serialization Protocol) Serialization for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-redisparser-master.flake = false;
  inputs.src-redisparser-master.type = "github";
  inputs.src-redisparser-master.owner = "xmonader";
  inputs.src-redisparser-master.repo = "nim-redisparser";
  inputs.src-redisparser-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-redisparser-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redisparser-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-redisparser-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}