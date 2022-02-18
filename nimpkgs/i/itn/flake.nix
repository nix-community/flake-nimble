{
  description = ''Nim module for parsing ITN (TomTom intinerary) files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."itn-master".type = "github";
  inputs."itn-master".owner = "riinr";
  inputs."itn-master".repo = "flake-nimble";
  inputs."itn-master".ref = "flake-pinning";
  inputs."itn-master".dir = "nimpkgs/i/itn/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}