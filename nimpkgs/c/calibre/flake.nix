{
  description = ''
    Calibre Database Lib for Nim
  '';
  inputs.src-calibre.url = "https://github.com/juancarlospaco/nim-calibre";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
