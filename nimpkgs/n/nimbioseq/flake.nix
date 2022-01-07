{
  description = ''
    Nim Library for sequence (protein/nucleotide) bioinformatics
  '';
  inputs.src-nimbioseq.url = "https://github.com/jhbadger/nimbioseq";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
