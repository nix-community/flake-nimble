{
  description = ''
    A string formatting library inspired by Python's `format`.
  '';
  inputs.src-strfmt.url = "https://github.com/bio-nim/nim-strfmt";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
