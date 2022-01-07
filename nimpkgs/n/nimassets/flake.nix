{
  description = ''
    bundle your assets to a nim
  '';
  inputs.src-nimassets.url = "https://github.com/xmonader/nimassets";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
