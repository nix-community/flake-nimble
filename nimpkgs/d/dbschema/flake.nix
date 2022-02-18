{
  description = ''Database schema migration library for Nim language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."dbschema-master".type = "github";
  inputs."dbschema-master".owner = "riinr";
  inputs."dbschema-master".repo = "flake-nimble";
  inputs."dbschema-master".ref = "flake-pinning";
  inputs."dbschema-master".dir = "nimpkgs/d/dbschema/master";

    inputs."dbschema-v0_1_1".type = "github";
  inputs."dbschema-v0_1_1".owner = "riinr";
  inputs."dbschema-v0_1_1".repo = "flake-nimble";
  inputs."dbschema-v0_1_1".ref = "flake-pinning";
  inputs."dbschema-v0_1_1".dir = "nimpkgs/d/dbschema/v0_1_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}