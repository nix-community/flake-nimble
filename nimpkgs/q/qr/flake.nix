{
  description = ''Create SVG-files with QR-codes from strings.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."qr-master".type = "github";
  inputs."qr-master".owner = "riinr";
  inputs."qr-master".repo = "flake-nimble";
  inputs."qr-master".ref = "flake-pinning";
  inputs."qr-master".dir = "nimpkgs/q/qr/master";
  inputs."qr-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qr-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."qr-v1_0_0".type = "github";
  inputs."qr-v1_0_0".owner = "riinr";
  inputs."qr-v1_0_0".repo = "flake-nimble";
  inputs."qr-v1_0_0".ref = "flake-pinning";
  inputs."qr-v1_0_0".dir = "nimpkgs/q/qr/v1_0_0";
  inputs."qr-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qr-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."qr-v1_2_0".type = "github";
  inputs."qr-v1_2_0".owner = "riinr";
  inputs."qr-v1_2_0".repo = "flake-nimble";
  inputs."qr-v1_2_0".ref = "flake-pinning";
  inputs."qr-v1_2_0".dir = "nimpkgs/q/qr/v1_2_0";
  inputs."qr-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qr-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."qr-v1_3_0".type = "github";
  inputs."qr-v1_3_0".owner = "riinr";
  inputs."qr-v1_3_0".repo = "flake-nimble";
  inputs."qr-v1_3_0".ref = "flake-pinning";
  inputs."qr-v1_3_0".dir = "nimpkgs/q/qr/v1_3_0";
  inputs."qr-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qr-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."qr-v1_3_1".type = "github";
  inputs."qr-v1_3_1".owner = "riinr";
  inputs."qr-v1_3_1".repo = "flake-nimble";
  inputs."qr-v1_3_1".ref = "flake-pinning";
  inputs."qr-v1_3_1".dir = "nimpkgs/q/qr/v1_3_1";
  inputs."qr-v1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qr-v1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}