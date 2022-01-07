{
  description = ''
    C Tox core wrapper
  '';
  inputs.src-toxcore.url = "https://git.sr.ht/~ehmry/nim_tox";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
