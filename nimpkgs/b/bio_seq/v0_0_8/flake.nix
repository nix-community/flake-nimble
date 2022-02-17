{
  description = ''A Nim library for biological sequence data.'';
  inputs.src-bio_seq-v0_0_8.flake = false;
  inputs.src-bio_seq-v0_0_8.type = "github";
  inputs.src-bio_seq-v0_0_8.owner = "kerrycobb";
  inputs.src-bio_seq-v0_0_8.repo = "BioSeq";
  inputs.src-bio_seq-v0_0_8.ref = "refs/tags/v0.0.8";
  
  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, src-bio_seq-v0_0_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bio_seq-v0_0_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bio_seq-v0_0_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}