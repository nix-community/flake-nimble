{
  description = ''
    Library for working with a slack app or sending messages to a slack channel (slack.com)
  '';
  inputs.src-slacklib.url = "https://github.com/ThomasTJdev/nim_slacklib";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
