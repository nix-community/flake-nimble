{
  description = ''
    A simple terminal tetris in Nim
  '';
  inputs.src-nimtetris.url = "https://github.com/jiro4989/nimtetris";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
