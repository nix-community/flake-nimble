{
  description = ''etcd client library'';
  inputs.src-etcd_client-0_1_0.flake = false;
  inputs.src-etcd_client-0_1_0.type = "github";
  inputs.src-etcd_client-0_1_0.owner = "FedericoCeratto";
  inputs.src-etcd_client-0_1_0.repo = "nim-etcd-client";
  inputs.src-etcd_client-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-etcd_client-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-etcd_client-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-etcd_client-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}