{
  description = ''
    High level GObject-Introspection based GTK3 bindings
  '';
  inputs.src-gintro.url = "https://github.com/stefansalewski/gintro";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
