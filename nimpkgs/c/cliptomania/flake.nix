{
  description = ''.NET-inspired lightweight clipboard library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."cliptomania-master".type = "github";
  inputs."cliptomania-master".owner = "riinr";
  inputs."cliptomania-master".repo = "flake-nimble";
  inputs."cliptomania-master".ref = "flake-pinning";
  inputs."cliptomania-master".dir = "nimpkgs/c/cliptomania/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}