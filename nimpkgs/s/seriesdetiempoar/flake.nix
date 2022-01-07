{
  description = ''
    Series de Tiempo de Argentina Government MultiSync API Client for Nim
  '';
  inputs.src-seriesdetiempoar.url = "https://github.com/juancarlospaco/nim-seriesdetiempoar";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
