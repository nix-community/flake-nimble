{
  description = ''
    Nim wrapper for wxWidgets. Also contains high-level genui macro
  '';
  inputs.src-wxnim.url = "https://github.com/PMunch/wxnim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
