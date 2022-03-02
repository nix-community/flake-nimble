{
  description = ''Glob pattern matching for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."globby-master".type = "github";
  inputs."globby-master".owner = "riinr";
  inputs."globby-master".repo = "flake-nimble";
  inputs."globby-master".ref = "flake-pinning";
  inputs."globby-master".dir = "nimpkgs/g/globby/master";
  inputs."globby-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."globby-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."globby-0_1_0".type = "github";
  inputs."globby-0_1_0".owner = "riinr";
  inputs."globby-0_1_0".repo = "flake-nimble";
  inputs."globby-0_1_0".ref = "flake-pinning";
  inputs."globby-0_1_0".dir = "nimpkgs/g/globby/0_1_0";
  inputs."globby-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."globby-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}