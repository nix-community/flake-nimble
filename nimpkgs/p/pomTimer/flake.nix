{
  description = ''
    A simple pomodoro timer for the comandline with cli-output and notifications.
  '';
  inputs.src-pomTimer.url = "https://github.com/MnlPhlp/pomTimer";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
