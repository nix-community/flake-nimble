{
  description = ''
    A validator for greek social security number (AMKA)
  '';
  inputs.src-amka.url = "https://github.com/zoispag/amka-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
