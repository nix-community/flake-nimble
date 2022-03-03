{
  description = ''LLVM bindings for the Nim language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."llvm-master".type = "github";
  inputs."llvm-master".owner = "riinr";
  inputs."llvm-master".repo = "flake-nimble";
  inputs."llvm-master".ref = "flake-pinning";
  inputs."llvm-master".dir = "nimpkgs/l/llvm/master";
  inputs."llvm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."llvm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}