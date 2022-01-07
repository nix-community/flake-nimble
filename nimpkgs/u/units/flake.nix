{
  description = ''
     Statically-typed quantity units.
  '';
  inputs.src-units.url = "https://github.com/Udiknedormin/NimUnits";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
