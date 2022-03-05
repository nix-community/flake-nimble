{
  description = ''A dead simple, no-nonsense parser combinator library written in pure Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-honeycomb-v0_1_1.flake = false;
  inputs.src-honeycomb-v0_1_1.type = "github";
  inputs.src-honeycomb-v0_1_1.owner = "KatrinaKitten";
  inputs.src-honeycomb-v0_1_1.repo = "honeycomb";
  inputs.src-honeycomb-v0_1_1.ref = "refs/tags/v0.1.1";
  inputs.src-honeycomb-v0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-honeycomb-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-honeycomb-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-honeycomb-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}