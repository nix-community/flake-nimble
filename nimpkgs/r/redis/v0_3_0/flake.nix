{
  description = ''official redis client for Nim'';
  inputs.src-redis-v0_3_0.flake = false;
  inputs.src-redis-v0_3_0.type = "github";
  inputs.src-redis-v0_3_0.owner = "nim-lang";
  inputs.src-redis-v0_3_0.repo = "redis";
  inputs.src-redis-v0_3_0.ref = "refs/tags/v0.3.0";
  
  outputs = { self, nixpkgs, src-redis-v0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redis-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-redis-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}