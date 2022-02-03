{
  description = ''Compiler package providing the compiler sources as a library.'';
  inputs.src-compiler-v0_8_14.flake = false;
  inputs.src-compiler-v0_8_14.type = "github";
  inputs.src-compiler-v0_8_14.owner = "nim-lang";
  inputs.src-compiler-v0_8_14.repo = "Nim";
  inputs.src-compiler-v0_8_14.ref = "refs/tags/v0.8.14";
  
  outputs = { self, nixpkgs, src-compiler-v0_8_14, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-compiler-v0_8_14;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-compiler-v0_8_14"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}