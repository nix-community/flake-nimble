{
  description = ''
    Variant type and type matching
  '';
  inputs.src-variant.url = "https://github.com/yglukhov/variant.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
