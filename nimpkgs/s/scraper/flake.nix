{
  description = ''
    Scraping tools
  '';
  inputs.src-scraper.url = "https://gitlab.com/lurlo/scraper";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
