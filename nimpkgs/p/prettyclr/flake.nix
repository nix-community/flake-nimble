{
  description = ''
    Small library for working with colors
  '';
  inputs.src-prettyclr.url = "https://github.com/prettybauble/prettyclr";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
