{
  description = ''Protobuf implementation compatible with the nim-serialization framework.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."protobuf_serialization-master".type = "github";
  inputs."protobuf_serialization-master".owner = "riinr";
  inputs."protobuf_serialization-master".repo = "flake-nimble";
  inputs."protobuf_serialization-master".ref = "flake-pinning";
  inputs."protobuf_serialization-master".dir = "nimpkgs/p/protobuf_serialization/master";
  inputs."protobuf_serialization-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."protobuf_serialization-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}