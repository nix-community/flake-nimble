{
  description = ''JSON schema validation and creation.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."jsonschema-master".type = "github";
  inputs."jsonschema-master".owner = "riinr";
  inputs."jsonschema-master".repo = "flake-nimble";
  inputs."jsonschema-master".ref = "flake-pinning";
  inputs."jsonschema-master".dir = "nimpkgs/j/jsonschema/master";
  inputs."jsonschema-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsonschema-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}