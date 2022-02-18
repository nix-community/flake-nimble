{
  description = ''String algorithms with succinct data structures'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-cello-0_1_6.flake = false;
  inputs.src-cello-0_1_6.type = "github";
  inputs.src-cello-0_1_6.owner = "andreaferretti";
  inputs.src-cello-0_1_6.repo = "cello";
  inputs.src-cello-0_1_6.ref = "refs/tags/0.1.6";
  
  
  inputs."spills".type = "github";
  inputs."spills".owner = "riinr";
  inputs."spills".repo = "flake-nimble";
  inputs."spills".ref = "flake-pinning";
  inputs."spills".dir = "nimpkgs/s/spills";

  outputs = { self, nixpkgs, flakeNimbleLib, src-cello-0_1_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cello-0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cello-0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}