{
  description = ''
    Huffman encode/decode for Nim.
  '';
  inputs.src-huffman.url = "https://github.com/xzeshen/huffman";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
