{
  description = ''
    Servicio Meteorologico Nacional Argentina API Client
  '';
  inputs.src-smnar.url = "https://github.com/juancarlospaco/nim-smnar";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
