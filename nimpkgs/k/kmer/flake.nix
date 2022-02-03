{
  description = ''encoded kmer library for fast operations on kmers up to 31'';
  inputs."kmer-master".url = "path:./master";
  inputs."kmer-v0_2_5".url = "path:./v0_2_5";
  inputs."kmer-v0_2_6".url = "path:./v0_2_6";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}