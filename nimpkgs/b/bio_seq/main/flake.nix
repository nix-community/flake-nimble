{
  description = ''A Nim library for biological sequence data.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-bio_seq-main.flake = false;
  inputs.src-bio_seq-main.type = "github";
  inputs.src-bio_seq-main.owner = "kerrycobb";
  inputs.src-bio_seq-main.repo = "BioSeq";
  inputs.src-bio_seq-main.ref = "refs/heads/main";
  inputs.src-bio_seq-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bio_seq-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bio_seq-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bio_seq-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}