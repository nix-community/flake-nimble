{
  description = ''dbus bindings for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."dbus-master".type = "github";
  inputs."dbus-master".owner = "riinr";
  inputs."dbus-master".repo = "flake-nimble";
  inputs."dbus-master".ref = "flake-pinning";
  inputs."dbus-master".dir = "nimpkgs/d/dbus/master";
  inputs."dbus-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dbus-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}