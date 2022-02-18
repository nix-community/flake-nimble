{
  description = ''Nim bindings for Clutter toolkit.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimclutter-master".type = "github";
  inputs."nimclutter-master".owner = "riinr";
  inputs."nimclutter-master".repo = "flake-nimble";
  inputs."nimclutter-master".ref = "flake-pinning";
  inputs."nimclutter-master".dir = "nimpkgs/n/nimclutter/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}