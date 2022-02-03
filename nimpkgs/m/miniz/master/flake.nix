{
  description = ''Bindings for Miniz lib.'';
  inputs.src-miniz-master.flake = false;
  inputs.src-miniz-master.type = "github";
  inputs.src-miniz-master.owner = "treeform";
  inputs.src-miniz-master.repo = "miniz";
  inputs.src-miniz-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-miniz-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-miniz-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-miniz-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}