{
  description = ''
    Wrapper for SDL 2.x
  '';
  inputs.src-sdl2.url = "https://github.com/nim-lang/sdl2";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
