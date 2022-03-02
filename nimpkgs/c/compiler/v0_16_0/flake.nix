{
  description = ''Compiler package providing the compiler sources as a library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-compiler-v0_16_0.flake = false;
  inputs.src-compiler-v0_16_0.type = "github";
  inputs.src-compiler-v0_16_0.owner = "nim-lang";
  inputs.src-compiler-v0_16_0.repo = "Nim";
  inputs.src-compiler-v0_16_0.ref = "refs/tags/v0.16.0";
  inputs.src-compiler-v0_16_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-compiler-v0_16_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-compiler-v0_16_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-compiler-v0_16_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}