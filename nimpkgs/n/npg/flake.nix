{
  description = ''
    Password generator in Nim
  '';
  inputs.src-npg.url = "https://github.com/rustomax/npg";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
