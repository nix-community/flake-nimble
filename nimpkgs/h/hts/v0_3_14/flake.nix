{
  description = ''htslib wrapper for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-hts-v0_3_14.flake = false;
  inputs.src-hts-v0_3_14.type = "github";
  inputs.src-hts-v0_3_14.owner = "brentp";
  inputs.src-hts-v0_3_14.repo = "hts-nim";
  inputs.src-hts-v0_3_14.ref = "refs/tags/v0.3.14";
  inputs.src-hts-v0_3_14.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hts-v0_3_14, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_3_14;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hts-v0_3_14"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}