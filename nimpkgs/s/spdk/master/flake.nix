{
  description = ''The Storage Performance Development Kit(SPDK) provides a set of tools and libraries for writing high performance, scalable, user-mode storage applications.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-spdk-master.flake = false;
  inputs.src-spdk-master.type = "github";
  inputs.src-spdk-master.owner = "nimscale";
  inputs.src-spdk-master.repo = "spdk";
  inputs.src-spdk-master.ref = "refs/heads/master";
  inputs.src-spdk-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-spdk-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spdk-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-spdk-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}