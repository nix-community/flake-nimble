{
  description = ''LAPACK bindings'';
  inputs.src-nimlapack-master.flake = false;
  inputs.src-nimlapack-master.type = "github";
  inputs.src-nimlapack-master.owner = "andreaferretti";
  inputs.src-nimlapack-master.repo = "nimlapack";
  inputs.src-nimlapack-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimlapack-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimlapack-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimlapack-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}