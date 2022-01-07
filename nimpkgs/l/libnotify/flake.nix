{
  description = ''
    Minimalistic libnotify wrapper for desktop notifications
  '';
  inputs.src-libnotify.url = "https://github.com/FedericoCeratto/nim-libnotify.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
