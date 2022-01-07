{
  description = ''
    This module provides the genui macro for the Gtk2 toolkit. Genui is a way to specify graphical interfaces in a hierarchical way to more clearly show the structure of the interface as well as simplifying the code.
  '';
  inputs.src-gtkgenui.url = "https://github.com/PMunch/gtkgenui";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
