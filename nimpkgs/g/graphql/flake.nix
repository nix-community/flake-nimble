{
  description = ''GraphQL parser, server and client implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."graphql-master".type = "github";
  inputs."graphql-master".owner = "riinr";
  inputs."graphql-master".repo = "flake-nimble";
  inputs."graphql-master".ref = "flake-pinning";
  inputs."graphql-master".dir = "nimpkgs/g/graphql/master";
  inputs."graphql-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphql-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}