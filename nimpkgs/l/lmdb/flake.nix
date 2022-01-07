{
  description = ''
    A wrapper for LMDB the Lightning Memory-Mapped Database
  '';
  inputs.src-lmdb.url = "https://github.com/FedericoCeratto/nim-lmdb";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
