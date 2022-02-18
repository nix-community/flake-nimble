{
  description = ''Nim port of Python's grp module for working with the UNIX group database file'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."grp-master".type = "github";
  inputs."grp-master".owner = "riinr";
  inputs."grp-master".repo = "flake-nimble";
  inputs."grp-master".ref = "flake-pinning";
  inputs."grp-master".dir = "nimpkgs/g/grp/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}