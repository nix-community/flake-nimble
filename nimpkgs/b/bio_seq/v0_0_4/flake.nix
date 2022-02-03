{
  description = ''A Nim library for biological sequence data.'';
  inputs.src-bio_seq-v0_0_4.flake = false;
  inputs.src-bio_seq-v0_0_4.type = "github";
  inputs.src-bio_seq-v0_0_4.owner = "kerrycobb";
  inputs.src-bio_seq-v0_0_4.repo = "BioSeq";
  inputs.src-bio_seq-v0_0_4.ref = "refs/tags/v0.0.4";
  
  outputs = { self, nixpkgs, src-bio_seq-v0_0_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bio_seq-v0_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bio_seq-v0_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}