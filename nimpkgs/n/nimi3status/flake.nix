{
  description = ''
    Lightweight i3 status bar.
  '';
  inputs.src-nimi3status.url = "https://github.com/FedericoCeratto/nimi3status";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
