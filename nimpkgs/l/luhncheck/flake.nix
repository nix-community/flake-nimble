{
  description = ''
    Implementation of Luhn algorithm in nim.
  '';
  inputs.src-luhncheck.url = "https://github.com/sillibird/luhncheck";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
