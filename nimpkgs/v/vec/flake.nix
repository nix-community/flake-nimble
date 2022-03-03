{
  description = ''A very simple vector library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."vec-master".type = "github";
  inputs."vec-master".owner = "riinr";
  inputs."vec-master".repo = "flake-nimble";
  inputs."vec-master".ref = "flake-pinning";
  inputs."vec-master".dir = "nimpkgs/v/vec/master";
  inputs."vec-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vec-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."vec-v1_0".type = "github";
  inputs."vec-v1_0".owner = "riinr";
  inputs."vec-v1_0".repo = "flake-nimble";
  inputs."vec-v1_0".ref = "flake-pinning";
  inputs."vec-v1_0".dir = "nimpkgs/v/vec/v1_0";
  inputs."vec-v1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vec-v1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}