{
  description = ''
    encode/decode variants to/from uint64
  '';
  inputs.src-variantkey.url = "https://github.com/brentp/variantkey-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
