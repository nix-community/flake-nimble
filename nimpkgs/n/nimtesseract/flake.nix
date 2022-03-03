{
  description = ''A wrapper to Tesseract OCR library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimtesseract-master".type = "github";
  inputs."nimtesseract-master".owner = "riinr";
  inputs."nimtesseract-master".repo = "flake-nimble";
  inputs."nimtesseract-master".ref = "flake-pinning";
  inputs."nimtesseract-master".dir = "nimpkgs/n/nimtesseract/master";
  inputs."nimtesseract-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtesseract-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimtesseract-v0_1_0".type = "github";
  inputs."nimtesseract-v0_1_0".owner = "riinr";
  inputs."nimtesseract-v0_1_0".repo = "flake-nimble";
  inputs."nimtesseract-v0_1_0".ref = "flake-pinning";
  inputs."nimtesseract-v0_1_0".dir = "nimpkgs/n/nimtesseract/v0_1_0";
  inputs."nimtesseract-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtesseract-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimtesseract-v0_2_0".type = "github";
  inputs."nimtesseract-v0_2_0".owner = "riinr";
  inputs."nimtesseract-v0_2_0".repo = "flake-nimble";
  inputs."nimtesseract-v0_2_0".ref = "flake-pinning";
  inputs."nimtesseract-v0_2_0".dir = "nimpkgs/n/nimtesseract/v0_2_0";
  inputs."nimtesseract-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtesseract-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}