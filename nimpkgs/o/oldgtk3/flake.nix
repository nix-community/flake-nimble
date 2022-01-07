{
  description = ''
    Low level bindings for GTK3 related libraries
  '';
  inputs.src-oldgtk3.url = "https://github.com/stefansalewski/oldgtk3";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
