{
  description = ''
    Full-featured WPS PIN generator
  '';
  inputs.src-wpspin.url = "https://github.com/drygdryg/wpspin-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
