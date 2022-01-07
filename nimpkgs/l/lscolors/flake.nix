{
  description = ''
    A library for colorizing paths according to LS_COLORS
  '';
  inputs.src-lscolors.url = "https://github.com/joachimschmidt557/nim-lscolors";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
