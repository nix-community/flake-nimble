{
  description = ''
    API for www.eloverblik.dk
  '';
  inputs.src-eloverblik.url = "https://github.com/ThomasTJdev/nim_eloverblik_api";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
