{
  description = ''
    Print is a set of pretty print macros, useful for print-debugging.
  '';
  inputs.src-print.url = "https://github.com/treeform/print";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
