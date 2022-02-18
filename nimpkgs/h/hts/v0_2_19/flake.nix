{
  description = ''htslib wrapper for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-hts-v0_2_19.flake = false;
  inputs.src-hts-v0_2_19.type = "github";
  inputs.src-hts-v0_2_19.owner = "brentp";
  inputs.src-hts-v0_2_19.repo = "hts-nim";
  inputs.src-hts-v0_2_19.ref = "refs/tags/v0.2.19";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hts-v0_2_19, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_2_19;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hts-v0_2_19"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}