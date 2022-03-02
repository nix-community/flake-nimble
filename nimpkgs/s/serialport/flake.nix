{
  description = ''Bindings for libserialport, the cross-platform serial communication library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."serialport-master".type = "github";
  inputs."serialport-master".owner = "riinr";
  inputs."serialport-master".repo = "flake-nimble";
  inputs."serialport-master".ref = "flake-pinning";
  inputs."serialport-master".dir = "nimpkgs/s/serialport/master";
  inputs."serialport-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serialport-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}