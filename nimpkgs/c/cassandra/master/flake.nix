{
  description = ''Bindings to Cassandra DB driver'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-cassandra-master.flake = false;
  inputs.src-cassandra-master.type = "github";
  inputs.src-cassandra-master.owner = "yglukhov";
  inputs.src-cassandra-master.repo = "cassandra";
  inputs.src-cassandra-master.ref = "refs/heads/master";
  inputs.src-cassandra-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cassandra-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cassandra-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cassandra-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}