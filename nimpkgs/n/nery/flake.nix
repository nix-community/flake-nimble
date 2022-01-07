{
  description = ''
    A simple library to create queries in Nim.
  '';
  inputs.src-nery.url = "https://github.com/David-Kunz/Nery";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
