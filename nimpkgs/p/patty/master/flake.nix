{
  description = ''Algebraic data types and pattern matching'';
  inputs.src-patty-master.flake = false;
  inputs.src-patty-master.type = "github";
  inputs.src-patty-master.owner = "andreaferretti";
  inputs.src-patty-master.repo = "patty";
  inputs.src-patty-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-patty-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-patty-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-patty-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}