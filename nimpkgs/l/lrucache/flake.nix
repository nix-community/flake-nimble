{
  description = ''
    Least recently used (LRU) cache
  '';
  inputs.src-lrucache.url = "https://github.com/jackhftang/lrucache";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
