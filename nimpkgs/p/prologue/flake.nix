{
  description = ''
    Another micro web framework.
  '';
  inputs.src-prologue.url = "https://github.com/planety/Prologue";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
