{
  description = ''Compiler package providing the compiler sources as a library.'';
  inputs.src-compiler-v0_9_6.flake = false;
  inputs.src-compiler-v0_9_6.type = "github";
  inputs.src-compiler-v0_9_6.owner = "nim-lang";
  inputs.src-compiler-v0_9_6.repo = "Nim";
  inputs.src-compiler-v0_9_6.ref = "refs/tags/v0.9.6";
  
  outputs = { self, nixpkgs, src-compiler-v0_9_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-compiler-v0_9_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-compiler-v0_9_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}