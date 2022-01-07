{
  description = ''
    Nim wrapper for the osdialog library
  '';
  inputs.src-osdialog.url = "https://github.com/johnnovak/nim-osdialog";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
