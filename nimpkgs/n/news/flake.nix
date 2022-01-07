{
  description = ''
    Easy websocket with chronos support
  '';
  inputs.src-news.url = "https://github.com/tormund/news";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
