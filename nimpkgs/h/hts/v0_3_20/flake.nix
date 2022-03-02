{
  description = ''htslib wrapper for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-hts-v0_3_20.flake = false;
  inputs.src-hts-v0_3_20.type = "github";
  inputs.src-hts-v0_3_20.owner = "brentp";
  inputs.src-hts-v0_3_20.repo = "hts-nim";
  inputs.src-hts-v0_3_20.ref = "refs/tags/v0.3.20";
  inputs.src-hts-v0_3_20.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hts-v0_3_20, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_3_20;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hts-v0_3_20"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}