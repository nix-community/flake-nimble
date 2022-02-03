{
  description = ''RESP(REdis Serialization Protocol) Serialization for Nim'';
  inputs.src-redisparser-0_1_1.flake = false;
  inputs.src-redisparser-0_1_1.type = "github";
  inputs.src-redisparser-0_1_1.owner = "xmonader";
  inputs.src-redisparser-0_1_1.repo = "nim-redisparser";
  inputs.src-redisparser-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-redisparser-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redisparser-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-redisparser-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}