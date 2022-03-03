{
  description = ''syntax sugar for assignments'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."assigns-master".type = "github";
  inputs."assigns-master".owner = "riinr";
  inputs."assigns-master".repo = "flake-nimble";
  inputs."assigns-master".ref = "flake-pinning";
  inputs."assigns-master".dir = "nimpkgs/a/assigns/master";
  inputs."assigns-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."assigns-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."assigns-v0_4_4".type = "github";
  inputs."assigns-v0_4_4".owner = "riinr";
  inputs."assigns-v0_4_4".repo = "flake-nimble";
  inputs."assigns-v0_4_4".ref = "flake-pinning";
  inputs."assigns-v0_4_4".dir = "nimpkgs/a/assigns/v0_4_4";
  inputs."assigns-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."assigns-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."assigns-v0_5_1".type = "github";
  inputs."assigns-v0_5_1".owner = "riinr";
  inputs."assigns-v0_5_1".repo = "flake-nimble";
  inputs."assigns-v0_5_1".ref = "flake-pinning";
  inputs."assigns-v0_5_1".dir = "nimpkgs/a/assigns/v0_5_1";
  inputs."assigns-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."assigns-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."assigns-v0_6_0".type = "github";
  inputs."assigns-v0_6_0".owner = "riinr";
  inputs."assigns-v0_6_0".repo = "flake-nimble";
  inputs."assigns-v0_6_0".ref = "flake-pinning";
  inputs."assigns-v0_6_0".dir = "nimpkgs/a/assigns/v0_6_0";
  inputs."assigns-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."assigns-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}