{
  description = ''
    Hackathon Web Scratchpad for teaching Nim on events using Wifi with limited or no Internet
  '';
  inputs.src-hackpad.url = "https://github.com/juancarlospaco/nim-hackpad";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
