{
  description = ''
    A wrapper around liblo for the Open Sound Control (OSC) protocol
  '';
  inputs.src-nimosc.url = "https://github.com/Psirus/NimOSC";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
