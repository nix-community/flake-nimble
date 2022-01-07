{
  description = ''
    Asynchronous MySQL connector written in pure Nim
  '';
  inputs.src-asyncmysql.url = "https://github.com/tulayang/asyncmysql";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
