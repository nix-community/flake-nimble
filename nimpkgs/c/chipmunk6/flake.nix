{
  description = ''
    Bindings for Chipmunk2D 6.x physics library
  '';
  inputs.src-chipmunk6.url = "https://github.com/fowlmouth/nimrod-chipmunk/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
