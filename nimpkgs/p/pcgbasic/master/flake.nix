{
  description = ''Permuted Congruential Generator (PCG) Random Number Generation (RNG) for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-pcgbasic-master.flake = false;
  inputs.src-pcgbasic-master.type = "github";
  inputs.src-pcgbasic-master.owner = "rockcavera";
  inputs.src-pcgbasic-master.repo = "pcgbasic";
  inputs.src-pcgbasic-master.ref = "refs/heads/master";
  inputs.src-pcgbasic-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pcgbasic-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pcgbasic-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pcgbasic-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}