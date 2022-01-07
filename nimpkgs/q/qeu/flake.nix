{
  description = ''
    Functionality for compare two values
  '';
  inputs.src-qeu.url = "https://github.com/hyu1996/qeu";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
