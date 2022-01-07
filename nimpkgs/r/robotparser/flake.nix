{
  description = ''
    Determine if a useragent can access a URL using robots.txt
  '';
  inputs.src-robotparser.url = "https://github.com/achesak/nim-robotparser";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
