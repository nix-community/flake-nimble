{
  description = ''objective-c runtime bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."objc_runtime-master".type = "github";
  inputs."objc_runtime-master".owner = "riinr";
  inputs."objc_runtime-master".repo = "flake-nimble";
  inputs."objc_runtime-master".ref = "flake-pinning";
  inputs."objc_runtime-master".dir = "nimpkgs/o/objc_runtime/master";
  inputs."objc_runtime-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."objc_runtime-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."objc_runtime-v0_1_1".type = "github";
  inputs."objc_runtime-v0_1_1".owner = "riinr";
  inputs."objc_runtime-v0_1_1".repo = "flake-nimble";
  inputs."objc_runtime-v0_1_1".ref = "flake-pinning";
  inputs."objc_runtime-v0_1_1".dir = "nimpkgs/o/objc_runtime/v0_1_1";
  inputs."objc_runtime-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."objc_runtime-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."objc_runtime-v0_1_2".type = "github";
  inputs."objc_runtime-v0_1_2".owner = "riinr";
  inputs."objc_runtime-v0_1_2".repo = "flake-nimble";
  inputs."objc_runtime-v0_1_2".ref = "flake-pinning";
  inputs."objc_runtime-v0_1_2".dir = "nimpkgs/o/objc_runtime/v0_1_2";
  inputs."objc_runtime-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."objc_runtime-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."objc_runtime-v0_1_3".type = "github";
  inputs."objc_runtime-v0_1_3".owner = "riinr";
  inputs."objc_runtime-v0_1_3".repo = "flake-nimble";
  inputs."objc_runtime-v0_1_3".ref = "flake-pinning";
  inputs."objc_runtime-v0_1_3".dir = "nimpkgs/o/objc_runtime/v0_1_3";
  inputs."objc_runtime-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."objc_runtime-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}