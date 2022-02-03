{
  description = ''A Nim library for biological sequence data.'';
  inputs.src-bio_seq-main.flake = false;
  inputs.src-bio_seq-main.type = "github";
  inputs.src-bio_seq-main.owner = "kerrycobb";
  inputs.src-bio_seq-main.repo = "BioSeq";
  inputs.src-bio_seq-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-bio_seq-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bio_seq-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bio_seq-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}