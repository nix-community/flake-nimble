{
  description = ''Simple reallocating vector'';
  inputs.src-vector-master.flake = false;
  inputs.src-vector-master.type = "github";
  inputs.src-vector-master.owner = "tontinton";
  inputs.src-vector-master.repo = "vector";
  inputs.src-vector-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-vector-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vector-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vector-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}