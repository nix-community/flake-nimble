{
  description = ''
    Library for fast packet processing
  '';
  inputs.src-dpdk.url = "https://github.com/nimscale/dpdk";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
