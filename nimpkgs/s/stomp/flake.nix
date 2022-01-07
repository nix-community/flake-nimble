{
  description = ''
    A pure-nim implementation of the STOMP protocol for machine messaging.
  '';
  inputs.src-stomp.url = "https://github.com/mahlonsmith/nim-stomp";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
