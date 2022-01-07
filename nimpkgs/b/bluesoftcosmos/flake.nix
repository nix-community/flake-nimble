{
  description = ''
    Bluesoft Cosmos extractor
  '';
  inputs.src-bluesoftcosmos.url = "https://gitlab.com/lurlo/bluesoftcosmos";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
