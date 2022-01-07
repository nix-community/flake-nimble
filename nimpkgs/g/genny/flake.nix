{
  description = ''
    Generate a shared library and bindings for many languages.
  '';
  inputs.src-genny.url = "https://github.com/treeform/genny";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
