{
  description = ''encoded kmer library for fast operations on kmers up to 31'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-kmer-v0_2_6.flake = false;
  inputs.src-kmer-v0_2_6.type = "github";
  inputs.src-kmer-v0_2_6.owner = "brentp";
  inputs.src-kmer-v0_2_6.repo = "nim-kmer";
  inputs.src-kmer-v0_2_6.ref = "refs/tags/v0.2.6";
  inputs.src-kmer-v0_2_6.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-kmer-v0_2_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kmer-v0_2_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-kmer-v0_2_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}