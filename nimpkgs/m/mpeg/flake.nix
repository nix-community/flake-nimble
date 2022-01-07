{
  description = ''
    Nim wrapper for pl_mpeg single header mpeg library.
  '';
  inputs.src-mpeg.url = "https://github.com/treeform/mpeg";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
