{
  description = ''Simple vector library for nim-lang.'';
  inputs.src-simple_vector-master.flake = false;
  inputs.src-simple_vector-master.type = "github";
  inputs.src-simple_vector-master.owner = "Ephiiz";
  inputs.src-simple_vector-master.repo = "simple_vector";
  inputs.src-simple_vector-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-simple_vector-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simple_vector-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-simple_vector-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}