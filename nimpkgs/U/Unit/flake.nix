{
  description = ''
    A library that provides unit types in nim
  '';
  inputs.src-Unit.url = "https://github.com/momeemt/Unit";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
