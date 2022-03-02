{
  description = ''A library to automatically encrypt all string constants in your programs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."strenc-master".type = "github";
  inputs."strenc-master".owner = "riinr";
  inputs."strenc-master".repo = "flake-nimble";
  inputs."strenc-master".ref = "flake-pinning";
  inputs."strenc-master".dir = "nimpkgs/s/strenc/master";
  inputs."strenc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strenc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."strenc-0_1".type = "github";
  inputs."strenc-0_1".owner = "riinr";
  inputs."strenc-0_1".repo = "flake-nimble";
  inputs."strenc-0_1".ref = "flake-pinning";
  inputs."strenc-0_1".dir = "nimpkgs/s/strenc/0_1";
  inputs."strenc-0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strenc-0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."strenc-0_1_1".type = "github";
  inputs."strenc-0_1_1".owner = "riinr";
  inputs."strenc-0_1_1".repo = "flake-nimble";
  inputs."strenc-0_1_1".ref = "flake-pinning";
  inputs."strenc-0_1_1".dir = "nimpkgs/s/strenc/0_1_1";
  inputs."strenc-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strenc-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}