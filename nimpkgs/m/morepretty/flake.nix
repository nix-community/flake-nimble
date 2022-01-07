{
  description = ''
    Morepretty - Does more than nimpretty.
  '';
  inputs.src-morepretty.url = "https://github.com/treeform/morepretty";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
