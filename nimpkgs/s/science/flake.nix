{
  description = ''
    A library for scientific computations in pure Nim
  '';
  inputs.src-science.url = "https://github.com/ruivieira/nim-science";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
