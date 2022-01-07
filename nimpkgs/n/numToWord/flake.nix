{
  description = ''
    Convert numbers to words
  '';
  inputs.src-numToWord.url = "https://github.com/thisago/numToWord";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
