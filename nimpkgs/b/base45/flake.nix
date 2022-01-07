{
  description = ''
    Base45 encoder and decoder
  '';
  inputs.src-base45.url = "https://git.sr.ht/~ehmry/base45";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
