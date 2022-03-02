{
  description = ''OpenWeatherMap API Lib for Nim, Free world wide Creative Commons & Open Data Licensed Weather data'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."openweathermap-master".type = "github";
  inputs."openweathermap-master".owner = "riinr";
  inputs."openweathermap-master".repo = "flake-nimble";
  inputs."openweathermap-master".ref = "flake-pinning";
  inputs."openweathermap-master".dir = "nimpkgs/o/openweathermap/master";
  inputs."openweathermap-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openweathermap-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}