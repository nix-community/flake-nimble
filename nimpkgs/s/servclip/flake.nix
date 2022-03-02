{
  description = ''Manage your clipboard remotely'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."servclip-master".type = "github";
  inputs."servclip-master".owner = "riinr";
  inputs."servclip-master".repo = "flake-nimble";
  inputs."servclip-master".ref = "flake-pinning";
  inputs."servclip-master".dir = "nimpkgs/s/servclip/master";
  inputs."servclip-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."servclip-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}