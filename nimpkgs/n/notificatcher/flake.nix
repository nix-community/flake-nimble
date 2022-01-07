{
  description = ''
    Small program to grab notifications from freedesktop and output them according to a format
  '';
  inputs.src-notificatcher.url = "https://github.com/PMunch/notificatcher";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
