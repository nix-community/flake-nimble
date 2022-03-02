{
  description = ''htslib wrapper for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-hts-v0_2_13.flake = false;
  inputs.src-hts-v0_2_13.type = "github";
  inputs.src-hts-v0_2_13.owner = "brentp";
  inputs.src-hts-v0_2_13.repo = "hts-nim";
  inputs.src-hts-v0_2_13.ref = "refs/tags/v0.2.13";
  inputs.src-hts-v0_2_13.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hts-v0_2_13, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_2_13;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hts-v0_2_13"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}