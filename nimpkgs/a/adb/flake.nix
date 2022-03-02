{
  description = ''ADB protocol implementation in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."adb-master".type = "github";
  inputs."adb-master".owner = "riinr";
  inputs."adb-master".repo = "flake-nimble";
  inputs."adb-master".ref = "flake-pinning";
  inputs."adb-master".dir = "nimpkgs/a/adb/master";
  inputs."adb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."adb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."adb-v0_1_0".type = "github";
  inputs."adb-v0_1_0".owner = "riinr";
  inputs."adb-v0_1_0".repo = "flake-nimble";
  inputs."adb-v0_1_0".ref = "flake-pinning";
  inputs."adb-v0_1_0".dir = "nimpkgs/a/adb/v0_1_0";
  inputs."adb-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."adb-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}