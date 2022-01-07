{
  description = ''
    MPD client library
  '';
  inputs.src-mpdclient.url = "https://github.com/SolitudeSF/mpdclient";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
