{
  description = ''htslib wrapper for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-hts-v0_2_22.flake = false;
  inputs.src-hts-v0_2_22.type = "github";
  inputs.src-hts-v0_2_22.owner = "brentp";
  inputs.src-hts-v0_2_22.repo = "hts-nim";
  inputs.src-hts-v0_2_22.ref = "refs/tags/v0.2.22";
  inputs.src-hts-v0_2_22.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hts-v0_2_22, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_2_22;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hts-v0_2_22"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}