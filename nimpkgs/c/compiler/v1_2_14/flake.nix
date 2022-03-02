{
  description = ''Compiler package providing the compiler sources as a library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-compiler-v1_2_14.flake = false;
  inputs.src-compiler-v1_2_14.type = "github";
  inputs.src-compiler-v1_2_14.owner = "nim-lang";
  inputs.src-compiler-v1_2_14.repo = "Nim";
  inputs.src-compiler-v1_2_14.ref = "refs/tags/v1.2.14";
  inputs.src-compiler-v1_2_14.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-compiler-v1_2_14, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-compiler-v1_2_14;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-compiler-v1_2_14"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}