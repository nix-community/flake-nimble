{
  description = ''OpenExchangeRates API Client for Nim. Works with/without SSL. Partially works with/without Free API Key.'';
  inputs.src-openexchangerates-master.flake = false;
  inputs.src-openexchangerates-master.type = "github";
  inputs.src-openexchangerates-master.owner = "juancarlospaco";
  inputs.src-openexchangerates-master.repo = "nim-openexchangerates";
  inputs.src-openexchangerates-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-openexchangerates-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-openexchangerates-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-openexchangerates-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}