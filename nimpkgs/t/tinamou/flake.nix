{
  description = ''
    Game Library in Nim with SDL2
  '';
  inputs.src-tinamou.url = "https://github.com/Double-oxygeN/tinamou";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
