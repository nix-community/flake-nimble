{
  description = ''wrapper for libclang (the C-interface of the clang LLVM frontend)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."libclang-master".type = "github";
  inputs."libclang-master".owner = "riinr";
  inputs."libclang-master".repo = "flake-nimble";
  inputs."libclang-master".ref = "flake-pinning";
  inputs."libclang-master".dir = "nimpkgs/l/libclang/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}