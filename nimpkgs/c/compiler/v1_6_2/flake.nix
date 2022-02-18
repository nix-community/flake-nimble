{
  description = ''Compiler package providing the compiler sources as a library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-compiler-v1_6_2.flake = false;
  inputs.src-compiler-v1_6_2.type = "github";
  inputs.src-compiler-v1_6_2.owner = "nim-lang";
  inputs.src-compiler-v1_6_2.repo = "Nim";
  inputs.src-compiler-v1_6_2.ref = "refs/tags/v1.6.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-compiler-v1_6_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-compiler-v1_6_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-compiler-v1_6_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}