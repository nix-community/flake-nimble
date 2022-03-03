{
  description = ''Time ago in words in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ago-master".type = "github";
  inputs."ago-master".owner = "riinr";
  inputs."ago-master".repo = "flake-nimble";
  inputs."ago-master".ref = "flake-pinning";
  inputs."ago-master".dir = "nimpkgs/a/ago/master";
  inputs."ago-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ago-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}