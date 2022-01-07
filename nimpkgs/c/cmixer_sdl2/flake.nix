{
  description = ''
    Lightweight audio mixer for SDL2
  '';
  inputs.src-cmixer_sdl2.url = "https://github.com/rxi/cmixer_sdl2-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
