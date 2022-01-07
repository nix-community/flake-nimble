{
  description = ''
    SPHINCS⁺ stateless hash-based signature scheme
  '';
  inputs.src-sphincs.url = "https://git.sr.ht/~ehmry/nim_sphincs";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
