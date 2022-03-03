{
  description = ''A dead code locator for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."mort-master".type = "github";
  inputs."mort-master".owner = "riinr";
  inputs."mort-master".repo = "flake-nimble";
  inputs."mort-master".ref = "flake-pinning";
  inputs."mort-master".dir = "nimpkgs/m/mort/master";
  inputs."mort-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mort-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}