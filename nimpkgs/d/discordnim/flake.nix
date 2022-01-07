{
  description = ''
    Discord library for Nim
  '';
  inputs.src-discordnim.url = "https://github.com/Krognol/discordnim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
