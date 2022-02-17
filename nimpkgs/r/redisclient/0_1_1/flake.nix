{
  description = ''Redis client for Nim'';
  inputs.src-redisclient-0_1_1.flake = false;
  inputs.src-redisclient-0_1_1.type = "github";
  inputs.src-redisclient-0_1_1.owner = "xmonader";
  inputs.src-redisclient-0_1_1.repo = "nim-redisclient";
  inputs.src-redisclient-0_1_1.ref = "refs/tags/0.1.1";
  
  
  inputs."redisparser".type = "github";
  inputs."redisparser".owner = "riinr";
  inputs."redisparser".repo = "flake-nimble";
  inputs."redisparser".ref = "flake-pinning";
  inputs."redisparser".dir = "nimpkgs/r/redisparser";

  outputs = { self, nixpkgs, src-redisclient-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redisclient-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-redisclient-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}