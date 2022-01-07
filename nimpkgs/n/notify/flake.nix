{
  description = ''
    A wrapper to notification libraries
  '';
  inputs.src-notify.url = "https://github.com/xbello/notify-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
