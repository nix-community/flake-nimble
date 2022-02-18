{
  description = ''Flexible TOML serialization [not] relying on run-time type information'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."toml_serialization-master".type = "github";
  inputs."toml_serialization-master".owner = "riinr";
  inputs."toml_serialization-master".repo = "flake-nimble";
  inputs."toml_serialization-master".ref = "flake-pinning";
  inputs."toml_serialization-master".dir = "nimpkgs/t/toml_serialization/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}