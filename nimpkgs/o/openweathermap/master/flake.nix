{
  description = ''OpenWeatherMap API Lib for Nim, Free world wide Creative Commons & Open Data Licensed Weather data'';
  inputs.src-openweathermap-master.flake = false;
  inputs.src-openweathermap-master.type = "github";
  inputs.src-openweathermap-master.owner = "juancarlospaco";
  inputs.src-openweathermap-master.repo = "nim-openweathermap";
  inputs.src-openweathermap-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-openweathermap-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-openweathermap-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-openweathermap-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}