{
  description = ''
    Define enums which values preserve their binary representation upon inserting or reordering
  '';
  inputs.src-persistent_enums.url = "https://github.com/yglukhov/persistent_enums";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
