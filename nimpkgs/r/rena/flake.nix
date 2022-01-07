{
  description = ''
    rena is a tiny fire/directory renaming command.
  '';
  inputs.src-rena.url = "https://github.com/jiro4989/rena";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
