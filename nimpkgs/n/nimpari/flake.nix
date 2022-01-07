{
  description = ''
    Nim wrapper for the PARI library
  '';
  inputs.src-nimpari.url = "https://github.com/BarrOff/nim-pari";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
