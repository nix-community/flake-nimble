{
  description = ''
    jieba's finalseg port to nim
  '';
  inputs.src-finalseg.url = "https://github.com/bung87/finalseg";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
