{
  description = ''
    Small program to draw notifications on the screen in a highly customisable way
  '';
  inputs.src-notifishower.url = "https://github.com/PMunch/notifishower";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
