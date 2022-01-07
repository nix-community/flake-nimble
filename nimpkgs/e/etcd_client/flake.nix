{
  description = ''
    etcd client library
  '';
  inputs.src-etcd_client.url = "https://github.com/FedericoCeratto/nim-etcd-client";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
