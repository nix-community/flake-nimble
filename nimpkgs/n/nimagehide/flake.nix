{
  description = ''
    A library to hide data in images. Usable as library or cli tool.
  '';
  inputs.src-nimagehide.url = "https://github.com/MnlPhlp/nimagehide";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
