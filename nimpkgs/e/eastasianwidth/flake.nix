{
  description = ''
    eastasianwidth is library for EastAsianWidth.
  '';
  inputs.src-eastasianwidth.url = "https://github.com/jiro4989/eastasianwidth";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
