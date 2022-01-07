{
  description = ''
    Show start/end datetime and duration of a command-line process using pipe.
  '';
  inputs.src-chronopipe.url = "https://github.com/williamd1k0/chrono";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
