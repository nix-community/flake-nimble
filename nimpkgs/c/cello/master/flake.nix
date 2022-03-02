{
  description = ''String algorithms with succinct data structures'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-cello-master.flake = false;
  inputs.src-cello-master.type = "github";
  inputs.src-cello-master.owner = "andreaferretti";
  inputs.src-cello-master.repo = "cello";
  inputs.src-cello-master.ref = "refs/heads/master";
  inputs.src-cello-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."spills".type = "github";
  # inputs."spills".owner = "riinr";
  # inputs."spills".repo = "flake-nimble";
  # inputs."spills".ref = "flake-pinning";
  # inputs."spills".dir = "nimpkgs/s/spills";
  # inputs."spills".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."spills".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-cello-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cello-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cello-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}