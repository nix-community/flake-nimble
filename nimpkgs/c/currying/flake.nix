{
  description = ''Currying library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."currying-master".type = "github";
  inputs."currying-master".owner = "riinr";
  inputs."currying-master".repo = "flake-nimble";
  inputs."currying-master".ref = "flake-pinning";
  inputs."currying-master".dir = "nimpkgs/c/currying/master";
  inputs."currying-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."currying-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}