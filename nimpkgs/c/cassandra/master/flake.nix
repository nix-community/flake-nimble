{
  description = ''Bindings to Cassandra DB driver'';
  inputs.src-cassandra-master.flake = false;
  inputs.src-cassandra-master.type = "github";
  inputs.src-cassandra-master.owner = "yglukhov";
  inputs.src-cassandra-master.repo = "cassandra";
  inputs.src-cassandra-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-cassandra-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cassandra-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cassandra-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}