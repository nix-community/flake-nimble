{
  description = ''
    Command line tools for Prologue.
  '';
  inputs.src-logue.url = "https://github.com/planety/logue";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
