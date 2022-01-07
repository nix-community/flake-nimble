{
  description = ''
    Grapheme aware string handling (Unicode tr29)
  '';
  inputs.src-graphemes.url = "https://github.com/nitely/nim-graphemes";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
