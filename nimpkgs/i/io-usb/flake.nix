{
  description = ''Obsolete - please use libusb instead!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."io-usb-master".type = "github";
  inputs."io-usb-master".owner = "riinr";
  inputs."io-usb-master".repo = "flake-nimble";
  inputs."io-usb-master".ref = "flake-pinning";
  inputs."io-usb-master".dir = "nimpkgs/i/io-usb/master";
  inputs."io-usb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."io-usb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}