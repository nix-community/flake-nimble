{
  description = ''
    A Nim library for data science and machine learning
  '';
  inputs.src-mentat.url = "https://github.com/ruivieira/nim-mentat";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
