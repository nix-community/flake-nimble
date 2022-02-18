{
  description = ''htslib wrapper for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-hts-v0_2_12.flake = false;
  inputs.src-hts-v0_2_12.type = "github";
  inputs.src-hts-v0_2_12.owner = "brentp";
  inputs.src-hts-v0_2_12.repo = "hts-nim";
  inputs.src-hts-v0_2_12.ref = "refs/tags/v0.2.12";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hts-v0_2_12, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_2_12;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hts-v0_2_12"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}