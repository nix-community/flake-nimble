{
  description = ''
    Implements a simple IRC client.
  '';
  inputs.src-irc.url = "https://github.com/nim-lang/irc";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
