{
  description = ''
    Simple nimble package to log monotic timings
  '';
  inputs.src-timelog.url = "https://github.com/Clonkk/timelog";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
