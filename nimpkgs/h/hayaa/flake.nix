{
  description = ''
    Conway's Game of Life implemented in Nim
  '';
  inputs.src-hayaa.url = "https://github.com/angus-lherrou/hayaa";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
