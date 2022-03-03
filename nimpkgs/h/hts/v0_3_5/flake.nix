{
  description = ''htslib wrapper for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-hts-v0_3_5.flake = false;
  inputs.src-hts-v0_3_5.type = "github";
  inputs.src-hts-v0_3_5.owner = "brentp";
  inputs.src-hts-v0_3_5.repo = "hts-nim";
  inputs.src-hts-v0_3_5.ref = "refs/tags/v0.3.5";
  inputs.src-hts-v0_3_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hts-v0_3_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_3_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hts-v0_3_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}