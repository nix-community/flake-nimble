{
  description = ''
    A URL shortener cli app. using bit.ly
  '';
  inputs.src-urlshortener.url = "https://github.com/jabbalaci/UrlShortener";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
