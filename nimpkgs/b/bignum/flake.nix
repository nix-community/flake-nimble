{
  description = ''
    Wrapper around the GMP bindings for the Nim language.
  '';
  inputs.src-bignum.url = "https://github.com/SciNim/bignum";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
