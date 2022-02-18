{
  description = ''A Nim library for biological sequence data.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-bio_seq-v_0_0_7.flake = false;
  inputs.src-bio_seq-v_0_0_7.type = "github";
  inputs.src-bio_seq-v_0_0_7.owner = "kerrycobb";
  inputs.src-bio_seq-v_0_0_7.repo = "BioSeq";
  inputs.src-bio_seq-v_0_0_7.ref = "refs/tags/v.0.0.7";
  
  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, flakeNimbleLib, src-bio_seq-v_0_0_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bio_seq-v_0_0_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bio_seq-v_0_0_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}