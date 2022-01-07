{
  description = ''
    Scraping API for www.nordnet.dk ready to integrate with Home Assistant (Hassio)
  '';
  inputs.src-nordnet.url = "https://github.com/ThomasTJdev/nim_nordnet_api";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
