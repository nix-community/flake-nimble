{
  description = ''Bindings for libusb, the cross-platform user library to access USB devices.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."libusb-master".type = "github";
  inputs."libusb-master".owner = "riinr";
  inputs."libusb-master".repo = "flake-nimble";
  inputs."libusb-master".ref = "flake-pinning";
  inputs."libusb-master".dir = "nimpkgs/l/libusb/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}