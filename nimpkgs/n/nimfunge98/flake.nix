{
  description = ''A Funge-98 interpreter written in nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimfunge98-master".type = "github";
  inputs."nimfunge98-master".owner = "riinr";
  inputs."nimfunge98-master".repo = "flake-nimble";
  inputs."nimfunge98-master".ref = "flake-pinning";
  inputs."nimfunge98-master".dir = "nimpkgs/n/nimfunge98/master";
  inputs."nimfunge98-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfunge98-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimfunge98-1_0_0".type = "github";
  inputs."nimfunge98-1_0_0".owner = "riinr";
  inputs."nimfunge98-1_0_0".repo = "flake-nimble";
  inputs."nimfunge98-1_0_0".ref = "flake-pinning";
  inputs."nimfunge98-1_0_0".dir = "nimpkgs/n/nimfunge98/1_0_0";
  inputs."nimfunge98-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfunge98-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimfunge98-1_0_1".type = "github";
  inputs."nimfunge98-1_0_1".owner = "riinr";
  inputs."nimfunge98-1_0_1".repo = "flake-nimble";
  inputs."nimfunge98-1_0_1".ref = "flake-pinning";
  inputs."nimfunge98-1_0_1".dir = "nimpkgs/n/nimfunge98/1_0_1";
  inputs."nimfunge98-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfunge98-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimfunge98-1_0_2".type = "github";
  inputs."nimfunge98-1_0_2".owner = "riinr";
  inputs."nimfunge98-1_0_2".repo = "flake-nimble";
  inputs."nimfunge98-1_0_2".ref = "flake-pinning";
  inputs."nimfunge98-1_0_2".dir = "nimpkgs/n/nimfunge98/1_0_2";
  inputs."nimfunge98-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfunge98-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimfunge98-1_1_0".type = "github";
  inputs."nimfunge98-1_1_0".owner = "riinr";
  inputs."nimfunge98-1_1_0".repo = "flake-nimble";
  inputs."nimfunge98-1_1_0".ref = "flake-pinning";
  inputs."nimfunge98-1_1_0".dir = "nimpkgs/n/nimfunge98/1_1_0";
  inputs."nimfunge98-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfunge98-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}