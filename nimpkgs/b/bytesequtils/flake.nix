{
  description = ''
    Nim package to manipulate buffer as either seq[byte] or string
  '';
  inputs.src-bytesequtils.url = "https://github.com/Clonkk/bytesequtils";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
