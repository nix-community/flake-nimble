{
  description = ''Bindings for Closure Compiler web API.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."closure_compiler-master".type = "github";
  inputs."closure_compiler-master".owner = "riinr";
  inputs."closure_compiler-master".repo = "flake-nimble";
  inputs."closure_compiler-master".ref = "flake-pinning";
  inputs."closure_compiler-master".dir = "nimpkgs/c/closure_compiler/master";
  inputs."closure_compiler-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."closure_compiler-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."closure_compiler-v0_2".type = "github";
  inputs."closure_compiler-v0_2".owner = "riinr";
  inputs."closure_compiler-v0_2".repo = "flake-nimble";
  inputs."closure_compiler-v0_2".ref = "flake-pinning";
  inputs."closure_compiler-v0_2".dir = "nimpkgs/c/closure_compiler/v0_2";
  inputs."closure_compiler-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."closure_compiler-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."closure_compiler-v0_3".type = "github";
  inputs."closure_compiler-v0_3".owner = "riinr";
  inputs."closure_compiler-v0_3".repo = "flake-nimble";
  inputs."closure_compiler-v0_3".ref = "flake-pinning";
  inputs."closure_compiler-v0_3".dir = "nimpkgs/c/closure_compiler/v0_3";
  inputs."closure_compiler-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."closure_compiler-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."closure_compiler-v0_3_1".type = "github";
  inputs."closure_compiler-v0_3_1".owner = "riinr";
  inputs."closure_compiler-v0_3_1".repo = "flake-nimble";
  inputs."closure_compiler-v0_3_1".ref = "flake-pinning";
  inputs."closure_compiler-v0_3_1".dir = "nimpkgs/c/closure_compiler/v0_3_1";
  inputs."closure_compiler-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."closure_compiler-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."closure_compiler-v0_3_2".type = "github";
  inputs."closure_compiler-v0_3_2".owner = "riinr";
  inputs."closure_compiler-v0_3_2".repo = "flake-nimble";
  inputs."closure_compiler-v0_3_2".ref = "flake-pinning";
  inputs."closure_compiler-v0_3_2".dir = "nimpkgs/c/closure_compiler/v0_3_2";
  inputs."closure_compiler-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."closure_compiler-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."closure_compiler-v0_3_3".type = "github";
  inputs."closure_compiler-v0_3_3".owner = "riinr";
  inputs."closure_compiler-v0_3_3".repo = "flake-nimble";
  inputs."closure_compiler-v0_3_3".ref = "flake-pinning";
  inputs."closure_compiler-v0_3_3".dir = "nimpkgs/c/closure_compiler/v0_3_3";
  inputs."closure_compiler-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."closure_compiler-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."closure_compiler-v0_3_4".type = "github";
  inputs."closure_compiler-v0_3_4".owner = "riinr";
  inputs."closure_compiler-v0_3_4".repo = "flake-nimble";
  inputs."closure_compiler-v0_3_4".ref = "flake-pinning";
  inputs."closure_compiler-v0_3_4".dir = "nimpkgs/c/closure_compiler/v0_3_4";
  inputs."closure_compiler-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."closure_compiler-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."closure_compiler-v0_3_5".type = "github";
  inputs."closure_compiler-v0_3_5".owner = "riinr";
  inputs."closure_compiler-v0_3_5".repo = "flake-nimble";
  inputs."closure_compiler-v0_3_5".ref = "flake-pinning";
  inputs."closure_compiler-v0_3_5".dir = "nimpkgs/c/closure_compiler/v0_3_5";
  inputs."closure_compiler-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."closure_compiler-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}