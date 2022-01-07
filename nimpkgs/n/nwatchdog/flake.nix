{
  description = ''
    Simple watchdog (watch file changes modified, deleted, created) in nim lang.
  '';
  inputs.src-nwatchdog.url = "https://github.com/zendbit/nim.nwatchdog";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
