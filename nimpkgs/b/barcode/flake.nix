{
  description = ''Nim barcode library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."barcode-master".type = "github";
  inputs."barcode-master".owner = "riinr";
  inputs."barcode-master".repo = "flake-nimble";
  inputs."barcode-master".ref = "flake-pinning";
  inputs."barcode-master".dir = "nimpkgs/b/barcode/master";
  inputs."barcode-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."barcode-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}