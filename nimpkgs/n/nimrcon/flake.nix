{
  description = ''
    Simple RCON client in Nim lang.
  '';
  inputs.src-nimrcon.url = "https://github.com/mcilya/nimrcon";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
