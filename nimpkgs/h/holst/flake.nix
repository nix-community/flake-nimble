{
  description = ''
    A parser for Jupyter notebooks.
  '';
  inputs.src-holst.url = "https://github.com/ruivieira/nim-holst";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
