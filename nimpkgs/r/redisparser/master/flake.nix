{
  description = ''RESP(REdis Serialization Protocol) Serialization for Nim'';
  inputs.src-redisparser-master.flake = false;
  inputs.src-redisparser-master.type = "github";
  inputs.src-redisparser-master.owner = "xmonader";
  inputs.src-redisparser-master.repo = "nim-redisparser";
  inputs.src-redisparser-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-redisparser-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redisparser-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-redisparser-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}