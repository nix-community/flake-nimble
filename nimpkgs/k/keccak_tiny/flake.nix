{
  description = ''
    A wrapper for the keccak-tiny C library
  '';
  inputs.src-keccak_tiny.url = "https://github.com/status-im/nim-keccak-tiny";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
