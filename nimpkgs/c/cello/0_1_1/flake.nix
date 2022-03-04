{
  description = ''String algorithms with succinct data structures'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-cello-0_1_1.flake = false;
  inputs.src-cello-0_1_1.type = "github";
  inputs.src-cello-0_1_1.owner = "andreaferretti";
  inputs.src-cello-0_1_1.repo = "cello";
  inputs.src-cello-0_1_1.ref = "refs/tags/0.1.1";
  inputs.src-cello-0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."spills".type = "github";
  inputs."spills".owner = "riinr";
  inputs."spills".repo = "flake-nimble";
  inputs."spills".ref = "flake-pinning";
  inputs."spills".dir = "nimpkgs/s/spills";
  inputs."spills".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spills".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-cello-0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cello-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cello-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}