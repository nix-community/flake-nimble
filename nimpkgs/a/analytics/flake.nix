{
  description = ''
    Allows statistics to be sent to and recorded in Google Analytics.
  '';
  inputs.src-analytics.url = "https://github.com/dom96/analytics";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
