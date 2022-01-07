{
  description = ''
    Small library for working with vectors
  '';
  inputs.src-prettyvec.url = "https://github.com/prettybauble/prettyvec";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
