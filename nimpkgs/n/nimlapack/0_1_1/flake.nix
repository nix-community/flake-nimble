{
  description = ''LAPACK bindings'';
  inputs.src-nimlapack-0_1_1.flake = false;
  inputs.src-nimlapack-0_1_1.type = "github";
  inputs.src-nimlapack-0_1_1.owner = "andreaferretti";
  inputs.src-nimlapack-0_1_1.repo = "nimlapack";
  inputs.src-nimlapack-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-nimlapack-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimlapack-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimlapack-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}