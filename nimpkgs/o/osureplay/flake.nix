{
  description = ''
    osu! replay parser
  '';
  inputs.src-osureplay.url = "https://github.com/Yardanico/nim-osureplay";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
