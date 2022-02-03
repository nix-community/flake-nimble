{
  description = ''encoded kmer library for fast operations on kmers up to 31'';
  inputs.src-kmer-master.flake = false;
  inputs.src-kmer-master.type = "github";
  inputs.src-kmer-master.owner = "brentp";
  inputs.src-kmer-master.repo = "nim-kmer";
  inputs.src-kmer-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-kmer-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kmer-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-kmer-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}