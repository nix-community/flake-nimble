{
  description = ''Wrapper for libclang C headers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."clang-develop".type = "github";
  inputs."clang-develop".owner = "riinr";
  inputs."clang-develop".repo = "flake-nimble";
  inputs."clang-develop".ref = "flake-pinning";
  inputs."clang-develop".dir = "nimpkgs/c/clang/develop";
  inputs."clang-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clang-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."clang-v0_59".type = "github";
  inputs."clang-v0_59".owner = "riinr";
  inputs."clang-v0_59".repo = "flake-nimble";
  inputs."clang-v0_59".ref = "flake-pinning";
  inputs."clang-v0_59".dir = "nimpkgs/c/clang/v0_59";
  inputs."clang-v0_59".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clang-v0_59".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}