{
  description = ''
    Wrapper for the assimp library
  '';
  inputs.src-assimp.url = "https://github.com/barcharcraz/nim-assimp";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
