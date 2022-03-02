{
  description = ''A QuickJS wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."quickjs4nim-master".type = "github";
  inputs."quickjs4nim-master".owner = "riinr";
  inputs."quickjs4nim-master".repo = "flake-nimble";
  inputs."quickjs4nim-master".ref = "flake-pinning";
  inputs."quickjs4nim-master".dir = "nimpkgs/q/quickjs4nim/master";
  inputs."quickjs4nim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."quickjs4nim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}