{
  description = ''The Storage Performance Development Kit(SPDK) provides a set of tools and libraries for writing high performance, scalable, user-mode storage applications.'';
  inputs.src-spdk-master.flake = false;
  inputs.src-spdk-master.type = "github";
  inputs.src-spdk-master.owner = "nimscale";
  inputs.src-spdk-master.repo = "spdk";
  inputs.src-spdk-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-spdk-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spdk-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-spdk-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}