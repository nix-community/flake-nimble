{
  description = ''encoded kmer library for fast operations on kmers up to 31'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-kmer-v0_2_5.flake = false;
  inputs.src-kmer-v0_2_5.type = "github";
  inputs.src-kmer-v0_2_5.owner = "brentp";
  inputs.src-kmer-v0_2_5.repo = "nim-kmer";
  inputs.src-kmer-v0_2_5.ref = "refs/tags/v0.2.5";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-kmer-v0_2_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kmer-v0_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-kmer-v0_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}