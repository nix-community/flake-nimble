{
  description = ''
    Signals/slots library.
  '';
  inputs.src-signals.url = "https://github.com/fowlmouth/signals.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
