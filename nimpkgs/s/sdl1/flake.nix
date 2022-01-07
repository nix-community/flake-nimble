{
  description = ''
    SDL 1.2 wrapper for Nim.
  '';
  inputs.src-sdl1.url = "https://github.com/nim-lang/sdl1";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
