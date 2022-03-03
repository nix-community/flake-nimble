{
  description = ''A Nim library for biological sequence data.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-bio_seq-v_0_0_5.flake = false;
  inputs.src-bio_seq-v_0_0_5.type = "github";
  inputs.src-bio_seq-v_0_0_5.owner = "kerrycobb";
  inputs.src-bio_seq-v_0_0_5.repo = "BioSeq";
  inputs.src-bio_seq-v_0_0_5.ref = "refs/tags/v.0.0.5";
  inputs.src-bio_seq-v_0_0_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bio_seq-v_0_0_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bio_seq-v_0_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bio_seq-v_0_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}