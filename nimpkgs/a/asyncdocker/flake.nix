{
  description = ''
    Asynchronous docker client written by Nim-lang
  '';
  inputs.src-asyncdocker.url = "https://github.com/tulayang/asyncdocker";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
