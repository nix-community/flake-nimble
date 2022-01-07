{
  description = ''
    Tiled map loader for the Nim programming language
  '';
  inputs.src-nim_tiled.url = "https://github.com/SkyVault/nim-tiled";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
