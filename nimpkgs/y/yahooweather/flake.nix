{
  description = ''
    Yahoo! Weather API wrapper
  '';
  inputs.src-yahooweather.url = "https://github.com/achesak/nim-yahooweather";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
