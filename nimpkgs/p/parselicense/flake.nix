{
  description = ''
    Parse Standard SPDX Licenses from string to Enum
  '';
  inputs.src-parselicense.url = "https://github.com/juancarlospaco/parselicense";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
