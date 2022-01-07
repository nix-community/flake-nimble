{
  description = ''
    Arbitrary-precision integers
  '';
  inputs.src-bigints.url = "https://github.com/nim-lang/bigints";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
