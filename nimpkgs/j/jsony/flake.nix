{
  description = ''
    A loose, direct to object json parser with hooks.
  '';
  inputs.src-jsony.url = "https://github.com/treeform/jsony";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
