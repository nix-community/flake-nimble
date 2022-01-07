{
  description = ''
    ed25519 key crypto bindings
  '';
  inputs.src-ed25519.url = "https://github.com/niv/ed25519.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
