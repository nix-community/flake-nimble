{
  description = ''The elvis package implements a 'truthy', 'ternary' and a 'coalesce' operator to Nim as syntactic sugar for working with conditional expressions'';
  inputs.src-elvis-master.flake = false;
  inputs.src-elvis-master.type = "github";
  inputs.src-elvis-master.owner = "mattaylor";
  inputs.src-elvis-master.repo = "elvis";
  inputs.src-elvis-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-elvis-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-elvis-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-elvis-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}