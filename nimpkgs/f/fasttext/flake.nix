{
  description = ''
    fastText porting in Nim
  '';
  inputs.src-fasttext.url = "https://github.com/bung87/fastText";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
