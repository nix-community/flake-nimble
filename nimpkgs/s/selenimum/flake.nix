{
  description = ''
    WebDriver for Selenium(selenium-hub).
  '';
  inputs.src-selenimum.url = "https://github.com/myamyu/selenimum";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
