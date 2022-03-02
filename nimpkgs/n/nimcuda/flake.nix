{
  description = ''CUDA bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimcuda-master".type = "github";
  inputs."nimcuda-master".owner = "riinr";
  inputs."nimcuda-master".repo = "flake-nimble";
  inputs."nimcuda-master".ref = "flake-pinning";
  inputs."nimcuda-master".dir = "nimpkgs/n/nimcuda/master";
  inputs."nimcuda-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcuda-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimcuda-0_1_1".type = "github";
  inputs."nimcuda-0_1_1".owner = "riinr";
  inputs."nimcuda-0_1_1".repo = "flake-nimble";
  inputs."nimcuda-0_1_1".ref = "flake-pinning";
  inputs."nimcuda-0_1_1".dir = "nimpkgs/n/nimcuda/0_1_1";
  inputs."nimcuda-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcuda-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimcuda-0_1_2".type = "github";
  inputs."nimcuda-0_1_2".owner = "riinr";
  inputs."nimcuda-0_1_2".repo = "flake-nimble";
  inputs."nimcuda-0_1_2".ref = "flake-pinning";
  inputs."nimcuda-0_1_2".dir = "nimpkgs/n/nimcuda/0_1_2";
  inputs."nimcuda-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcuda-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimcuda-0_1_3".type = "github";
  inputs."nimcuda-0_1_3".owner = "riinr";
  inputs."nimcuda-0_1_3".repo = "flake-nimble";
  inputs."nimcuda-0_1_3".ref = "flake-pinning";
  inputs."nimcuda-0_1_3".dir = "nimpkgs/n/nimcuda/0_1_3";
  inputs."nimcuda-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcuda-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimcuda-0_1_4".type = "github";
  inputs."nimcuda-0_1_4".owner = "riinr";
  inputs."nimcuda-0_1_4".repo = "flake-nimble";
  inputs."nimcuda-0_1_4".ref = "flake-pinning";
  inputs."nimcuda-0_1_4".dir = "nimpkgs/n/nimcuda/0_1_4";
  inputs."nimcuda-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcuda-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimcuda-0_1_5".type = "github";
  inputs."nimcuda-0_1_5".owner = "riinr";
  inputs."nimcuda-0_1_5".repo = "flake-nimble";
  inputs."nimcuda-0_1_5".ref = "flake-pinning";
  inputs."nimcuda-0_1_5".dir = "nimpkgs/n/nimcuda/0_1_5";
  inputs."nimcuda-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcuda-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimcuda-0_1_6".type = "github";
  inputs."nimcuda-0_1_6".owner = "riinr";
  inputs."nimcuda-0_1_6".repo = "flake-nimble";
  inputs."nimcuda-0_1_6".ref = "flake-pinning";
  inputs."nimcuda-0_1_6".dir = "nimpkgs/n/nimcuda/0_1_6";
  inputs."nimcuda-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcuda-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimcuda-0_1_7".type = "github";
  inputs."nimcuda-0_1_7".owner = "riinr";
  inputs."nimcuda-0_1_7".repo = "flake-nimble";
  inputs."nimcuda-0_1_7".ref = "flake-pinning";
  inputs."nimcuda-0_1_7".dir = "nimpkgs/n/nimcuda/0_1_7";
  inputs."nimcuda-0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcuda-0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}