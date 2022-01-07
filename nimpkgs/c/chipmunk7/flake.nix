{
  description = ''
    Bindings for Chipmunk, a fast and lightweight 2D game physics library.
  '';
  inputs.src-chipmunk7.url = "https://github.com/avahe-kellenberger/nim-chipmunk";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
