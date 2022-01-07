{
  description = ''
    Encode/decode utf8 utf16 and utf32.
  '';
  inputs.src-encode.url = "https://github.com/treeform/encode";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
