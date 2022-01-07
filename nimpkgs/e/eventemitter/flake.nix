{
  description = ''
    event emitter for nim
  '';
  inputs.src-eventemitter.url = "https://github.com/al-bimani/eventemitter";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
