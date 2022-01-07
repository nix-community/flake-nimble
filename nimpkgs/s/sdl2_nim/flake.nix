{
  description = ''
    Wrapper of the SDL 2 library for the Nim language.
  '';
  inputs.src-sdl2_nim.url = "https://github.com/Vladar4/sdl2_nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
