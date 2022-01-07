{
  description = ''
    encoded kmer library for fast operations on kmers up to 31
  '';
  inputs.src-kmer.url = "https://github.com/brentp/nim-kmer";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
