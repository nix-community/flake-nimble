{
  description = ''
    Binary serialization framework
  '';
  inputs.src-bingo.url = "https://github.com/planetis-m/bingo";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
