{
  description = ''A Nim library for biological sequence data.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-bio_seq-v0_0_1.flake = false;
  inputs.src-bio_seq-v0_0_1.type = "github";
  inputs.src-bio_seq-v0_0_1.owner = "kerrycobb";
  inputs.src-bio_seq-v0_0_1.repo = "BioSeq";
  inputs.src-bio_seq-v0_0_1.ref = "refs/tags/v0.0.1";
  inputs.src-bio_seq-v0_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bio_seq-v0_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bio_seq-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bio_seq-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}