{
  description = ''A Nim library for biological sequence data.'';
  inputs.src-bio_seq-v0_0_1.flake = false;
  inputs.src-bio_seq-v0_0_1.type = "github";
  inputs.src-bio_seq-v0_0_1.owner = "kerrycobb";
  inputs.src-bio_seq-v0_0_1.repo = "BioSeq";
  inputs.src-bio_seq-v0_0_1.ref = "refs/tags/v0.0.1";
  
  outputs = { self, nixpkgs, src-bio_seq-v0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bio_seq-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bio_seq-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}