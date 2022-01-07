{
  description = ''
    High-level libsodium bindings
  '';
  inputs.src-sodium.url = "https://github.com/zielmicha/libsodium.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
