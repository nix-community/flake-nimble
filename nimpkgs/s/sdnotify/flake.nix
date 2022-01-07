{
  description = ''
    Systemd service notification helper
  '';
  inputs.src-sdnotify.url = "https://github.com/FedericoCeratto/nim-sdnotify";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
