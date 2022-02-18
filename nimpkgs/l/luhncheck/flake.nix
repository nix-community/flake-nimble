{
  description = ''Implementation of Luhn algorithm in nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."luhncheck-master".type = "github";
  inputs."luhncheck-master".owner = "riinr";
  inputs."luhncheck-master".repo = "flake-nimble";
  inputs."luhncheck-master".ref = "flake-pinning";
  inputs."luhncheck-master".dir = "nimpkgs/l/luhncheck/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}