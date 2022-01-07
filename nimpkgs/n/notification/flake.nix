{
  description = ''
    Desktop notifications
  '';
  inputs.src-notification.url = "https://github.com/SolitudeSF/notification";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
