{
  description = ''
    libcmark wrapper for Nim
  '';
  inputs.src-cmark.url = "https://github.com/zengxs/nim-cmark";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
