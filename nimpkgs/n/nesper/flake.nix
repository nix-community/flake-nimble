{
  description = ''Nim wrappers for ESP-IDF (ESP32)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nesper-master".type = "github";
  inputs."nesper-master".owner = "riinr";
  inputs."nesper-master".repo = "flake-nimble";
  inputs."nesper-master".ref = "flake-pinning";
  inputs."nesper-master".dir = "nimpkgs/n/nesper/master";
  inputs."nesper-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesper-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nesper-0_5_0".type = "github";
  inputs."nesper-0_5_0".owner = "riinr";
  inputs."nesper-0_5_0".repo = "flake-nimble";
  inputs."nesper-0_5_0".ref = "flake-pinning";
  inputs."nesper-0_5_0".dir = "nimpkgs/n/nesper/0_5_0";
  inputs."nesper-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesper-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nesper-v0_2_0".type = "github";
  inputs."nesper-v0_2_0".owner = "riinr";
  inputs."nesper-v0_2_0".repo = "flake-nimble";
  inputs."nesper-v0_2_0".ref = "flake-pinning";
  inputs."nesper-v0_2_0".dir = "nimpkgs/n/nesper/v0_2_0";
  inputs."nesper-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesper-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nesper-v0_3_0".type = "github";
  inputs."nesper-v0_3_0".owner = "riinr";
  inputs."nesper-v0_3_0".repo = "flake-nimble";
  inputs."nesper-v0_3_0".ref = "flake-pinning";
  inputs."nesper-v0_3_0".dir = "nimpkgs/n/nesper/v0_3_0";
  inputs."nesper-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesper-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nesper-v0_4_0".type = "github";
  inputs."nesper-v0_4_0".owner = "riinr";
  inputs."nesper-v0_4_0".repo = "flake-nimble";
  inputs."nesper-v0_4_0".ref = "flake-pinning";
  inputs."nesper-v0_4_0".dir = "nimpkgs/n/nesper/v0_4_0";
  inputs."nesper-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesper-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nesper-v0_4_1".type = "github";
  inputs."nesper-v0_4_1".owner = "riinr";
  inputs."nesper-v0_4_1".repo = "flake-nimble";
  inputs."nesper-v0_4_1".ref = "flake-pinning";
  inputs."nesper-v0_4_1".dir = "nimpkgs/n/nesper/v0_4_1";
  inputs."nesper-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesper-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nesper-v0_6_0".type = "github";
  inputs."nesper-v0_6_0".owner = "riinr";
  inputs."nesper-v0_6_0".repo = "flake-nimble";
  inputs."nesper-v0_6_0".ref = "flake-pinning";
  inputs."nesper-v0_6_0".dir = "nimpkgs/n/nesper/v0_6_0";
  inputs."nesper-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesper-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}