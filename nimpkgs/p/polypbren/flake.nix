{
  description = ''Renormalization of colloidal charges of polydipserse dispersions using the Poisson-Boltzmann equation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."polypbren-master".type = "github";
  inputs."polypbren-master".owner = "riinr";
  inputs."polypbren-master".repo = "flake-nimble";
  inputs."polypbren-master".ref = "flake-pinning";
  inputs."polypbren-master".dir = "nimpkgs/p/polypbren/master";
  inputs."polypbren-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polypbren-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."polypbren-v0_4-paper".type = "github";
  inputs."polypbren-v0_4-paper".owner = "riinr";
  inputs."polypbren-v0_4-paper".repo = "flake-nimble";
  inputs."polypbren-v0_4-paper".ref = "flake-pinning";
  inputs."polypbren-v0_4-paper".dir = "nimpkgs/p/polypbren/v0_4-paper";
  inputs."polypbren-v0_4-paper".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polypbren-v0_4-paper".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."polypbren-v0_4_1".type = "github";
  inputs."polypbren-v0_4_1".owner = "riinr";
  inputs."polypbren-v0_4_1".repo = "flake-nimble";
  inputs."polypbren-v0_4_1".ref = "flake-pinning";
  inputs."polypbren-v0_4_1".dir = "nimpkgs/p/polypbren/v0_4_1";
  inputs."polypbren-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polypbren-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."polypbren-v0_4_2".type = "github";
  inputs."polypbren-v0_4_2".owner = "riinr";
  inputs."polypbren-v0_4_2".repo = "flake-nimble";
  inputs."polypbren-v0_4_2".ref = "flake-pinning";
  inputs."polypbren-v0_4_2".dir = "nimpkgs/p/polypbren/v0_4_2";
  inputs."polypbren-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polypbren-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."polypbren-v0_4_3".type = "github";
  inputs."polypbren-v0_4_3".owner = "riinr";
  inputs."polypbren-v0_4_3".repo = "flake-nimble";
  inputs."polypbren-v0_4_3".ref = "flake-pinning";
  inputs."polypbren-v0_4_3".dir = "nimpkgs/p/polypbren/v0_4_3";
  inputs."polypbren-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polypbren-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}