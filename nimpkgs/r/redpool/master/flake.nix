{
  description = ''Redis connection pool'';
  inputs.src-redpool-master.flake = false;
  inputs.src-redpool-master.type = "github";
  inputs.src-redpool-master.owner = "zedeus";
  inputs.src-redpool-master.repo = "redpool";
  inputs.src-redpool-master.ref = "refs/heads/master";
  
  
  inputs."https://github.com/zedeus/redis".url = "path:../../../h/https://github.com/zedeus/redis";
  inputs."https://github.com/zedeus/redis".type = "github";
  inputs."https://github.com/zedeus/redis".owner = "riinr";
  inputs."https://github.com/zedeus/redis".repo = "flake-nimble";
  inputs."https://github.com/zedeus/redis".ref = "flake-pinning";
  inputs."https://github.com/zedeus/redis".dir = "nimpkgs/h/https://github.com/zedeus/redis";

  outputs = { self, nixpkgs, src-redpool-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redpool-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-redpool-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}