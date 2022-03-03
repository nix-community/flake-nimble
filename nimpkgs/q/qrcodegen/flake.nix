{
  description = ''QR Code Generator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."qrcodegen-master".type = "github";
  inputs."qrcodegen-master".owner = "riinr";
  inputs."qrcodegen-master".repo = "flake-nimble";
  inputs."qrcodegen-master".ref = "flake-pinning";
  inputs."qrcodegen-master".dir = "nimpkgs/q/qrcodegen/master";
  inputs."qrcodegen-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qrcodegen-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}