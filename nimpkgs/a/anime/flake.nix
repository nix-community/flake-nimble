{
  description = ''
    The Nim wrapper for tracemoe.
  '';
  inputs.src-anime.url = "https://github.com/ethosa/anime";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
