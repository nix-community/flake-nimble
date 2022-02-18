{
  description = ''htslib wrapper for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-hts-v0_2_21.flake = false;
  inputs.src-hts-v0_2_21.type = "github";
  inputs.src-hts-v0_2_21.owner = "brentp";
  inputs.src-hts-v0_2_21.repo = "hts-nim";
  inputs.src-hts-v0_2_21.ref = "refs/tags/v0.2.21";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hts-v0_2_21, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_2_21;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hts-v0_2_21"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}