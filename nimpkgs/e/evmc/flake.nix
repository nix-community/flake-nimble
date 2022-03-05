{
  description = ''A wrapper for the The Ethereum EVMC library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."evmc-master".type = "github";
  inputs."evmc-master".owner = "riinr";
  inputs."evmc-master".repo = "flake-nimble";
  inputs."evmc-master".ref = "flake-pinning";
  inputs."evmc-master".dir = "nimpkgs/e/evmc/master";
  inputs."evmc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."evmc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}