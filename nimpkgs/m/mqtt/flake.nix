{
  description = ''MQTT wrapper for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."mqtt-master".type = "github";
  inputs."mqtt-master".owner = "riinr";
  inputs."mqtt-master".repo = "flake-nimble";
  inputs."mqtt-master".ref = "flake-pinning";
  inputs."mqtt-master".dir = "nimpkgs/m/mqtt/master";
  inputs."mqtt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mqtt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}