{
  description = ''String algorithms with succinct data structures'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-cello-0_1_4.flake = false;
  inputs.src-cello-0_1_4.type = "github";
  inputs.src-cello-0_1_4.owner = "andreaferretti";
  inputs.src-cello-0_1_4.repo = "cello";
  inputs.src-cello-0_1_4.ref = "refs/tags/0.1.4";
  inputs.src-cello-0_1_4.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."spills".type = "github";
  # inputs."spills".owner = "riinr";
  # inputs."spills".repo = "flake-nimble";
  # inputs."spills".ref = "flake-pinning";
  # inputs."spills".dir = "nimpkgs/s/spills";
  # inputs."spills".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."spills".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-cello-0_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cello-0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cello-0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}