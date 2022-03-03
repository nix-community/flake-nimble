{
  description = ''Flexible JSON serialization not relying on run-time type information'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."json_serialization-master".type = "github";
  inputs."json_serialization-master".owner = "riinr";
  inputs."json_serialization-master".repo = "flake-nimble";
  inputs."json_serialization-master".ref = "flake-pinning";
  inputs."json_serialization-master".dir = "nimpkgs/j/json_serialization/master";
  inputs."json_serialization-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."json_serialization-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}