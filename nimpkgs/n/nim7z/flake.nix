{
  description = ''
    7z extraction for Nim
  '';
  inputs.src-nim7z.url = "https://github.com/genotrance/nim7z";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
