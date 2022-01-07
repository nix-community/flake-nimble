{
  description = ''
    Nim implementation of minhash algoritim
  '';
  inputs.src-minhash.url = "https://github.com/bung87/minhash";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
