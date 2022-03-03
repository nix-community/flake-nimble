{
  description = ''A Nim library to access the Binance API.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."binance-master".type = "github";
  inputs."binance-master".owner = "riinr";
  inputs."binance-master".repo = "flake-nimble";
  inputs."binance-master".ref = "flake-pinning";
  inputs."binance-master".dir = "nimpkgs/b/binance/master";
  inputs."binance-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binance-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}