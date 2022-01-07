{
  description = ''
    library for scraping google search results
  '';
  inputs.src-googlesearch.url = "https://github.com/xyb/googlesearch.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
