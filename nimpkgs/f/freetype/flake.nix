{
  description = ''
    wrapper for FreeType2 library
  '';
  inputs.src-freetype.url = "https://github.com/jangko/freetype";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
