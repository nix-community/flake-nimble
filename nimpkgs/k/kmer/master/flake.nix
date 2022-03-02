{
  description = ''encoded kmer library for fast operations on kmers up to 31'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-kmer-master.flake = false;
  inputs.src-kmer-master.type = "github";
  inputs.src-kmer-master.owner = "brentp";
  inputs.src-kmer-master.repo = "nim-kmer";
  inputs.src-kmer-master.ref = "refs/heads/master";
  inputs.src-kmer-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-kmer-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kmer-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-kmer-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}