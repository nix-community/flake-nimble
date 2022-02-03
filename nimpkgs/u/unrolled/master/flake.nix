{
  description = ''Unroll for-loops at compile-time.'';
  inputs.src-unrolled-master.flake = false;
  inputs.src-unrolled-master.type = "github";
  inputs.src-unrolled-master.owner = "schneiderfelipe";
  inputs.src-unrolled-master.repo = "unrolled";
  inputs.src-unrolled-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-unrolled-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unrolled-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unrolled-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}