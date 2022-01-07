{
  description = ''
    User Agent parser for nim.
  '';
  inputs.src-useragents.url = "https://github.com/treeform/useragents";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
