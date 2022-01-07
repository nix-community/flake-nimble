{
  description = ''
    Humanize elapsed time
  '';
  inputs.src-eternity.url = "https://github.com/hiteshjasani/nim-eternity";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
