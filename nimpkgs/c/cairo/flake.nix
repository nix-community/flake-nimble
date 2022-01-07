{
  description = ''
    Wrapper for cairo, a vector graphics library with display and print output
  '';
  inputs.src-cairo.url = "https://github.com/nim-lang/cairo";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
