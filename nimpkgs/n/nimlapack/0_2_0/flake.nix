{
  description = ''LAPACK bindings'';
  inputs.src-nimlapack-0_2_0.flake = false;
  inputs.src-nimlapack-0_2_0.type = "github";
  inputs.src-nimlapack-0_2_0.owner = "andreaferretti";
  inputs.src-nimlapack-0_2_0.repo = "nimlapack";
  inputs.src-nimlapack-0_2_0.ref = "refs/tags/0.2.0";
  
  outputs = { self, nixpkgs, src-nimlapack-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimlapack-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimlapack-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}