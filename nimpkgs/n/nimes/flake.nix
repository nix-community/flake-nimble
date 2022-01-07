{
  description = ''
    NES emulator using SDL2, also compiles to JavaScript with emscripten.
  '';
  inputs.src-nimes.url = "https://github.com/def-/nimes";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
