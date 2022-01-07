{
  description = ''
    Event Based Programming for Nim.
  '';
  inputs.src-mc_events.url = "https://github.com/MerosCrypto/mc_events";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
