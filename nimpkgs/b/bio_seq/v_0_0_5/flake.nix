{
  description = ''A Nim library for biological sequence data.'';
  inputs.src-bio_seq-v_0_0_5.flake = false;
  inputs.src-bio_seq-v_0_0_5.type = "github";
  inputs.src-bio_seq-v_0_0_5.owner = "kerrycobb";
  inputs.src-bio_seq-v_0_0_5.repo = "BioSeq";
  inputs.src-bio_seq-v_0_0_5.ref = "refs/tags/v.0.0.5";
  
  outputs = { self, nixpkgs, src-bio_seq-v_0_0_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bio_seq-v_0_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bio_seq-v_0_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}