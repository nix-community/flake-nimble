{
  description = ''Compiler package providing the compiler sources as a library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-compiler-v0_11_0.flake = false;
  inputs.src-compiler-v0_11_0.type = "github";
  inputs.src-compiler-v0_11_0.owner = "nim-lang";
  inputs.src-compiler-v0_11_0.repo = "Nim";
  inputs.src-compiler-v0_11_0.ref = "refs/tags/v0.11.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-compiler-v0_11_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-compiler-v0_11_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-compiler-v0_11_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}