{
  description = ''
    Implementation of the WebDriver w3c spec.
  '';
  inputs.src-webdriver.url = "https://github.com/dom96/webdriver";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
