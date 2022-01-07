{
  description = ''
    Support for ensemble file format and arithmetic using jackknife/bootstrap propagation of errors
  '';
  inputs.src-ensem.url = "https://github.com/JeffersonLab/ensem";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
