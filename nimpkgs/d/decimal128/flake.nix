{
  description = ''
    Decimal type support based on the IEEE 754 2008 specification.
  '';
  inputs.src-decimal128.url = "https://github.com/JohnAD/decimal128";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
