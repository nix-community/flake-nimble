{
  description = ''Basic operations on singly and doubly linked lists.'';
  inputs.src-listsv-master.flake = false;
  inputs.src-listsv-master.type = "github";
  inputs.src-listsv-master.owner = "srwiley";
  inputs.src-listsv-master.repo = "listsv";
  inputs.src-listsv-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-listsv-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-listsv-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-listsv-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}