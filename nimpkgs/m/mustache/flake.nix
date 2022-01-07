{
  description = ''
    Mustache in Nim
  '';
  inputs.src-mustache.url = "https://github.com/soasme/nim-mustache";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
