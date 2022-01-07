{
  description = ''
    SipHash, a pseudorandom function optimized for short messages.
  '';
  inputs.src-siphash.url = "https://git.sr.ht/~ehmry/nim_siphash";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
