{
  description = ''
    Euclidean Division & Euclidean Modulo
  '';
  inputs.src-euclidean.url = "https://github.com/juancarlospaco/nim-euclidean";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
