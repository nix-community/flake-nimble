{
  description = ''Parse fixed-width fields within lines of text (complementary to parsecsv)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."parsefixed-master".type = "github";
  inputs."parsefixed-master".owner = "riinr";
  inputs."parsefixed-master".repo = "flake-nimble";
  inputs."parsefixed-master".ref = "flake-pinning";
  inputs."parsefixed-master".dir = "nimpkgs/p/parsefixed/master";
  inputs."parsefixed-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsefixed-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."parsefixed-0_1_2".type = "github";
  inputs."parsefixed-0_1_2".owner = "riinr";
  inputs."parsefixed-0_1_2".repo = "flake-nimble";
  inputs."parsefixed-0_1_2".ref = "flake-pinning";
  inputs."parsefixed-0_1_2".dir = "nimpkgs/p/parsefixed/0_1_2";
  inputs."parsefixed-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsefixed-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}