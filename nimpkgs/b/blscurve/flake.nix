{
  description = ''Nim implementation of  Barreto-Lynn-Scott (BLS) curve BLS12-381.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."blscurve-master".type = "github";
  inputs."blscurve-master".owner = "riinr";
  inputs."blscurve-master".repo = "flake-nimble";
  inputs."blscurve-master".ref = "flake-pinning";
  inputs."blscurve-master".dir = "nimpkgs/b/blscurve/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}