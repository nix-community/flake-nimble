{
  description = ''wrapper for communicating with InfluxDB over the REST interface'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."influx-master".type = "github";
  inputs."influx-master".owner = "riinr";
  inputs."influx-master".repo = "flake-nimble";
  inputs."influx-master".ref = "flake-pinning";
  inputs."influx-master".dir = "nimpkgs/i/influx/master";
  inputs."influx-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."influx-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}