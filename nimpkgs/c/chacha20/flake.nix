{
  description = ''
    ChaCha20 stream cipher
  '';
  inputs.src-chacha20.url = "https://git.sr.ht/~ehmry/chacha20";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
