{
  description = ''
    Lazy evaluated sequences
  '';
  inputs.src-lazyseq.url = "https://github.com/markspanbroek/nim-lazyseq";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
