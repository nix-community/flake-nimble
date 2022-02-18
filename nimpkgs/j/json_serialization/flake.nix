{
  description = ''Flexible JSON serialization not relying on run-time type information'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."json_serialization-master".type = "github";
  inputs."json_serialization-master".owner = "riinr";
  inputs."json_serialization-master".repo = "flake-nimble";
  inputs."json_serialization-master".ref = "flake-pinning";
  inputs."json_serialization-master".dir = "nimpkgs/j/json_serialization/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}