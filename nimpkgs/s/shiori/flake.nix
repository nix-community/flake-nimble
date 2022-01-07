{
  description = ''
    SHIORI Protocol Parser/Builder
  '';
  inputs.src-shiori.url = "https://github.com/Narazaka/shiori-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
