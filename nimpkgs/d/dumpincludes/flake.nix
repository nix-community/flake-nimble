{
  description = ''
    See where your exe size comes from.
  '';
  inputs.src-dumpincludes.url = "https://github.com/treeform/dumpincludes";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
