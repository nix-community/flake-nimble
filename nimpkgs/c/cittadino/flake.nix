{
  description = ''
    A simple PubSub framework using STOMP.
  '';
  inputs.src-cittadino.url = "https://github.com/makingspace/cittadino";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
