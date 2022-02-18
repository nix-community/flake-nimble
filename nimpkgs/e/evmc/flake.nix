{
  description = ''A wrapper for the The Ethereum EVMC library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."evmc-master".type = "github";
  inputs."evmc-master".owner = "riinr";
  inputs."evmc-master".repo = "flake-nimble";
  inputs."evmc-master".ref = "flake-pinning";
  inputs."evmc-master".dir = "nimpkgs/e/evmc/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}