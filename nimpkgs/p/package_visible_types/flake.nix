{
  description = ''
    A hacky helper lib for authoring Nim packages with package-level visiblity
  '';
  inputs.src-package_visible_types.url = "https://github.com/zah/nim-package-visible-types";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
