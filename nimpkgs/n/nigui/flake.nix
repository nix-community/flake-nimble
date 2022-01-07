{
  description = ''
    NiGui is a cross-platform, desktop GUI toolkit using native widgets.
  '';
  inputs.src-nigui.url = "https://github.com/trustable-code/NiGui";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
