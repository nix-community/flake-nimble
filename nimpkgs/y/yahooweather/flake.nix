{
  description = ''Yahoo! Weather API wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."yahooweather-master".type = "github";
  inputs."yahooweather-master".owner = "riinr";
  inputs."yahooweather-master".repo = "flake-nimble";
  inputs."yahooweather-master".ref = "flake-pinning";
  inputs."yahooweather-master".dir = "nimpkgs/y/yahooweather/master";
  inputs."yahooweather-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yahooweather-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}