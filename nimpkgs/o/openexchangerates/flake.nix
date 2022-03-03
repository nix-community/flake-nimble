{
  description = ''OpenExchangeRates API Client for Nim. Works with/without SSL. Partially works with/without Free API Key.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."openexchangerates-master".type = "github";
  inputs."openexchangerates-master".owner = "riinr";
  inputs."openexchangerates-master".repo = "flake-nimble";
  inputs."openexchangerates-master".ref = "flake-pinning";
  inputs."openexchangerates-master".dir = "nimpkgs/o/openexchangerates/master";
  inputs."openexchangerates-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openexchangerates-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}