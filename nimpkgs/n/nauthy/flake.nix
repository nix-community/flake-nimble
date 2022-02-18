{
  description = ''Nim library for One Time Password verification and generation.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nauthy-master".type = "github";
  inputs."nauthy-master".owner = "riinr";
  inputs."nauthy-master".repo = "flake-nimble";
  inputs."nauthy-master".ref = "flake-pinning";
  inputs."nauthy-master".dir = "nimpkgs/n/nauthy/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}