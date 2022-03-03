{
  description = ''Bindings for libusb, the cross-platform user library to access USB devices.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."libusb-master".type = "github";
  inputs."libusb-master".owner = "riinr";
  inputs."libusb-master".repo = "flake-nimble";
  inputs."libusb-master".ref = "flake-pinning";
  inputs."libusb-master".dir = "nimpkgs/l/libusb/master";
  inputs."libusb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libusb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}