{
  description = ''
    Test asynchronous code
  '';
  inputs.src-asynctest.url = "https://github.com/markspanbroek/asynctest";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
