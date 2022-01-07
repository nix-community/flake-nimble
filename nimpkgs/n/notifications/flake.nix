{
  description = ''
    Library for displaying notifications on the desktop
  '';
  inputs.src-notifications.url = "https://github.com/dom96/notifications";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
