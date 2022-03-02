{
  description = ''Game Boy Advance development library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."natu-master".type = "github";
  inputs."natu-master".owner = "riinr";
  inputs."natu-master".repo = "flake-nimble";
  inputs."natu-master".ref = "flake-pinning";
  inputs."natu-master".dir = "nimpkgs/n/natu/master";
  inputs."natu-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."natu-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."natu-0_1_1".type = "github";
  inputs."natu-0_1_1".owner = "riinr";
  inputs."natu-0_1_1".repo = "flake-nimble";
  inputs."natu-0_1_1".ref = "flake-pinning";
  inputs."natu-0_1_1".dir = "nimpkgs/n/natu/0_1_1";
  inputs."natu-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."natu-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."natu-0_1_2".type = "github";
  inputs."natu-0_1_2".owner = "riinr";
  inputs."natu-0_1_2".repo = "flake-nimble";
  inputs."natu-0_1_2".ref = "flake-pinning";
  inputs."natu-0_1_2".dir = "nimpkgs/n/natu/0_1_2";
  inputs."natu-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."natu-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}