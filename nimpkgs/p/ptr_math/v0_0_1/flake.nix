{
  description = ''Pointer arithmetic library'';
  inputs.src-ptr_math-v0_0_1.flake = false;
  inputs.src-ptr_math-v0_0_1.type = "github";
  inputs.src-ptr_math-v0_0_1.owner = "kaushalmodi";
  inputs.src-ptr_math-v0_0_1.repo = "ptr_math";
  inputs.src-ptr_math-v0_0_1.ref = "refs/tags/v0.0.1";
  
  outputs = { self, nixpkgs, src-ptr_math-v0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ptr_math-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ptr_math-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}