{
  description = ''
    Extensible bit vector integer encoding library
  '';
  inputs.src-bitvec.url = "https://github.com/keyme/nim_bitvec";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
