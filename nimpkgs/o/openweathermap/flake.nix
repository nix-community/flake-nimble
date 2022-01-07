{
  description = ''
    OpenWeatherMap API Lib for Nim, Free world wide Creative Commons & Open Data Licensed Weather data
  '';
  inputs.src-openweathermap.url = "https://github.com/juancarlospaco/nim-openweathermap";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
