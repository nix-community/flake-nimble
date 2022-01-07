{
  description = ''
    Homoiconic dynamic language interpreter in Nim
  '';
  inputs.src-spryvm.url = "https://github.com/gokr/spryvm";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
