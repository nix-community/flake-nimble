{
  description = ''OpenWeatherMap API Lib for Nim, Free world wide Creative Commons & Open Data Licensed Weather data'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-openweathermap-master.flake = false;
  inputs.src-openweathermap-master.type = "github";
  inputs.src-openweathermap-master.owner = "juancarlospaco";
  inputs.src-openweathermap-master.repo = "nim-openweathermap";
  inputs.src-openweathermap-master.ref = "refs/heads/master";
  inputs.src-openweathermap-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-openweathermap-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-openweathermap-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-openweathermap-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}