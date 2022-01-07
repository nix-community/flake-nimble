{
  description = ''
    Haraka v2 short-input hash function
  '';
  inputs.src-haraka.url = "https://git.sr.ht/~ehmry/nim_haraka";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
