{
  description = ''
    Wrapper for libnetpbm
  '';
  inputs.src-netpbm.url = "https://github.com/barcharcraz/nim-netpbm";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
