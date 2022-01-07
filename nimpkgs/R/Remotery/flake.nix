{
  description = ''
    Nim wrapper for (and with) Celtoys's Remotery
  '';
  inputs.src-Remotery.url = "https://github.com/Halsys/Nim-Remotery";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
