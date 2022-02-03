{
  description = ''Compiler package providing the compiler sources as a library.'';
  inputs.src-compiler-v1_6_0.flake = false;
  inputs.src-compiler-v1_6_0.type = "github";
  inputs.src-compiler-v1_6_0.owner = "nim-lang";
  inputs.src-compiler-v1_6_0.repo = "Nim";
  inputs.src-compiler-v1_6_0.ref = "refs/tags/v1.6.0";
  
  outputs = { self, nixpkgs, src-compiler-v1_6_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-compiler-v1_6_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-compiler-v1_6_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}