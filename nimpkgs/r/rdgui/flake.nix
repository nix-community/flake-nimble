{
  description = ''
    A modular GUI toolkit for rapid
  '';
  inputs.src-rdgui.url = "https://github.com/liquid600pgm/rdgui";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
