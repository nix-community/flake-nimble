{
  description = ''
    random Japanese name and address generator
  '';
  inputs.src-gimei.url = "https://github.com/mkanenobu/nim-gimei";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
