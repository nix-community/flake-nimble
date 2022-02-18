{
  description = ''RFC3339 (dates and times) implementation for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."rfc3339-master".type = "github";
  inputs."rfc3339-master".owner = "riinr";
  inputs."rfc3339-master".repo = "flake-nimble";
  inputs."rfc3339-master".ref = "flake-pinning";
  inputs."rfc3339-master".dir = "nimpkgs/r/rfc3339/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}