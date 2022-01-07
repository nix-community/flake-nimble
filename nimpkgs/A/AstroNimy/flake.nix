{
  description = ''
    Astronomical library for Nim
  '';
  inputs.src-AstroNimy.url = "https://github.com/super-massive-black-holes/AstroNimy";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
