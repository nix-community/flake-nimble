{
  description = ''
    Extensible data notation based on Cirru syntax
  '';
  inputs.src-cirru_edn.url = "https://github.com/Cirru/cirru-edn.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
