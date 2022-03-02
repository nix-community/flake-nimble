{
  description = ''Wrapper for libsvm.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."libsvm_legacy-master".type = "github";
  inputs."libsvm_legacy-master".owner = "riinr";
  inputs."libsvm_legacy-master".repo = "flake-nimble";
  inputs."libsvm_legacy-master".ref = "flake-pinning";
  inputs."libsvm_legacy-master".dir = "nimpkgs/l/libsvm_legacy/master";
  inputs."libsvm_legacy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsvm_legacy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}