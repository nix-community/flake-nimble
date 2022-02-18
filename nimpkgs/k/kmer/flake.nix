{
  description = ''encoded kmer library for fast operations on kmers up to 31'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."kmer-master".type = "github";
  inputs."kmer-master".owner = "riinr";
  inputs."kmer-master".repo = "flake-nimble";
  inputs."kmer-master".ref = "flake-pinning";
  inputs."kmer-master".dir = "nimpkgs/k/kmer/master";

    inputs."kmer-v0_2_5".type = "github";
  inputs."kmer-v0_2_5".owner = "riinr";
  inputs."kmer-v0_2_5".repo = "flake-nimble";
  inputs."kmer-v0_2_5".ref = "flake-pinning";
  inputs."kmer-v0_2_5".dir = "nimpkgs/k/kmer/v0_2_5";

    inputs."kmer-v0_2_6".type = "github";
  inputs."kmer-v0_2_6".owner = "riinr";
  inputs."kmer-v0_2_6".repo = "flake-nimble";
  inputs."kmer-v0_2_6".ref = "flake-pinning";
  inputs."kmer-v0_2_6".dir = "nimpkgs/k/kmer/v0_2_6";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}