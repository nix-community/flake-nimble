{
  description = ''
    implements the cucumber BDD framework in the nim language
  '';
  inputs.src-cucumber.url = "https://github.com/shaunc/cucumber_nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
