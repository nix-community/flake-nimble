{
  description = ''
    Library for external memory manipulation on a windows process
  '';
  inputs.src-nimem.url = "https://github.com/Sann0/Nimem";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
