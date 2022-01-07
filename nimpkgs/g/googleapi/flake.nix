{
  description = ''
    Google API for nim
  '';
  inputs.src-googleapi.url = "https://github.com/treeform/googleapi";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
