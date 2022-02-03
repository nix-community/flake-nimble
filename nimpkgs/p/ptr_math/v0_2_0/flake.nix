{
  description = ''Pointer arithmetic library'';
  inputs.src-ptr_math-v0_2_0.flake = false;
  inputs.src-ptr_math-v0_2_0.type = "github";
  inputs.src-ptr_math-v0_2_0.owner = "kaushalmodi";
  inputs.src-ptr_math-v0_2_0.repo = "ptr_math";
  inputs.src-ptr_math-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-ptr_math-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ptr_math-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ptr_math-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}