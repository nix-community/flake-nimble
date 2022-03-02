{
  description = ''libgraphqlparser wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimgraphql-master".type = "github";
  inputs."nimgraphql-master".owner = "riinr";
  inputs."nimgraphql-master".repo = "flake-nimble";
  inputs."nimgraphql-master".ref = "flake-pinning";
  inputs."nimgraphql-master".dir = "nimpkgs/n/nimgraphql/master";
  inputs."nimgraphql-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgraphql-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgraphql-v0_1_0".type = "github";
  inputs."nimgraphql-v0_1_0".owner = "riinr";
  inputs."nimgraphql-v0_1_0".repo = "flake-nimble";
  inputs."nimgraphql-v0_1_0".ref = "flake-pinning";
  inputs."nimgraphql-v0_1_0".dir = "nimpkgs/n/nimgraphql/v0_1_0";
  inputs."nimgraphql-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgraphql-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgraphql-v0_2_0".type = "github";
  inputs."nimgraphql-v0_2_0".owner = "riinr";
  inputs."nimgraphql-v0_2_0".repo = "flake-nimble";
  inputs."nimgraphql-v0_2_0".ref = "flake-pinning";
  inputs."nimgraphql-v0_2_0".dir = "nimpkgs/n/nimgraphql/v0_2_0";
  inputs."nimgraphql-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgraphql-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}