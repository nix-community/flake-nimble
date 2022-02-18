{
  description = ''Bindings to Cassandra DB driver'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."cassandra-master".type = "github";
  inputs."cassandra-master".owner = "riinr";
  inputs."cassandra-master".repo = "flake-nimble";
  inputs."cassandra-master".ref = "flake-pinning";
  inputs."cassandra-master".dir = "nimpkgs/c/cassandra/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}