{
  description = ''
    The Storage Performance Development Kit(SPDK) provides a set of tools and libraries for writing high performance, scalable, user-mode storage applications.
  '';
  inputs.src-spdk.url = "https://github.com/nimscale/spdk.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
