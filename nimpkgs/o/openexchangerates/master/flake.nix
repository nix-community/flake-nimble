{
  description = ''OpenExchangeRates API Client for Nim. Works with/without SSL. Partially works with/without Free API Key.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-openexchangerates-master.flake = false;
  inputs.src-openexchangerates-master.type = "github";
  inputs.src-openexchangerates-master.owner = "juancarlospaco";
  inputs.src-openexchangerates-master.repo = "nim-openexchangerates";
  inputs.src-openexchangerates-master.ref = "refs/heads/master";
  inputs.src-openexchangerates-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-openexchangerates-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-openexchangerates-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-openexchangerates-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}