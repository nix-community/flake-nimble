{
  description = ''Terminal UI based cd command'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."qwertycd-master".type = "github";
  inputs."qwertycd-master".owner = "riinr";
  inputs."qwertycd-master".repo = "flake-nimble";
  inputs."qwertycd-master".ref = "flake-pinning";
  inputs."qwertycd-master".dir = "nimpkgs/q/qwertycd/master";
  inputs."qwertycd-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qwertycd-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."qwertycd-v0_1_0".type = "github";
  inputs."qwertycd-v0_1_0".owner = "riinr";
  inputs."qwertycd-v0_1_0".repo = "flake-nimble";
  inputs."qwertycd-v0_1_0".ref = "flake-pinning";
  inputs."qwertycd-v0_1_0".dir = "nimpkgs/q/qwertycd/v0_1_0";
  inputs."qwertycd-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qwertycd-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."qwertycd-v0_1_1".type = "github";
  inputs."qwertycd-v0_1_1".owner = "riinr";
  inputs."qwertycd-v0_1_1".repo = "flake-nimble";
  inputs."qwertycd-v0_1_1".ref = "flake-pinning";
  inputs."qwertycd-v0_1_1".dir = "nimpkgs/q/qwertycd/v0_1_1";
  inputs."qwertycd-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qwertycd-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."qwertycd-v0_1_2".type = "github";
  inputs."qwertycd-v0_1_2".owner = "riinr";
  inputs."qwertycd-v0_1_2".repo = "flake-nimble";
  inputs."qwertycd-v0_1_2".ref = "flake-pinning";
  inputs."qwertycd-v0_1_2".dir = "nimpkgs/q/qwertycd/v0_1_2";
  inputs."qwertycd-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qwertycd-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."qwertycd-v0_1_3".type = "github";
  inputs."qwertycd-v0_1_3".owner = "riinr";
  inputs."qwertycd-v0_1_3".repo = "flake-nimble";
  inputs."qwertycd-v0_1_3".ref = "flake-pinning";
  inputs."qwertycd-v0_1_3".dir = "nimpkgs/q/qwertycd/v0_1_3";
  inputs."qwertycd-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qwertycd-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}