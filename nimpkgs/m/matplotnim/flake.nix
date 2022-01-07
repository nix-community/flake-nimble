{
  description = ''
    A Nim wrapper for Python's matplotlib
  '';
  inputs.src-matplotnim.url = "https://github.com/ruivieira/matplotnim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
