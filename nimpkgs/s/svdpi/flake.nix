{
  description = ''
    Small wrapper for SystemVerilog DPI-C header svdpi.h
  '';
  inputs.src-svdpi.url = "https://github.com/kaushalmodi/nim-svdpi";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
