{
  description = ''Pointer arithmetic library'';
  inputs.src-ptr_math-main.flake = false;
  inputs.src-ptr_math-main.type = "github";
  inputs.src-ptr_math-main.owner = "kaushalmodi";
  inputs.src-ptr_math-main.repo = "ptr_math";
  inputs.src-ptr_math-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-ptr_math-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ptr_math-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ptr_math-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}