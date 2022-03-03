{
  description = ''module for creating and reading QR codes using http://goqr.me/'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."qrcode-master".type = "github";
  inputs."qrcode-master".owner = "riinr";
  inputs."qrcode-master".repo = "flake-nimble";
  inputs."qrcode-master".ref = "flake-pinning";
  inputs."qrcode-master".dir = "nimpkgs/q/qrcode/master";
  inputs."qrcode-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qrcode-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}