{
  description = ''Library for fast packet processing'';
  inputs.src-dpdk-master.flake = false;
  inputs.src-dpdk-master.type = "github";
  inputs.src-dpdk-master.owner = "nimscale";
  inputs.src-dpdk-master.repo = "dpdk";
  inputs.src-dpdk-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-dpdk-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dpdk-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dpdk-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}