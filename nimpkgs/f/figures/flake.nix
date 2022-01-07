{
  description = ''
    unicode symbols
  '';
  inputs.src-figures.url = "https://github.com/lmariscal/figures";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
