{
  description = ''
    A terminal file manager written in nim
  '';
  inputs.src-nimmm.url = "https://github.com/joachimschmidt557/nimmm";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
