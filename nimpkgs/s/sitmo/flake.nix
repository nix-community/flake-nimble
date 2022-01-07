{
  description = ''
    Sitmo parallel random number generator in Nim
  '';
  inputs.src-sitmo.url = "https://github.com/jxy/sitmo";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
