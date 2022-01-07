{
  description = ''
    A Nim library for biological sequence data.
  '';
  inputs.src-bio_seq.url = "https://github.com/kerrycobb/BioSeq";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
