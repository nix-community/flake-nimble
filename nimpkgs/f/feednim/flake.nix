{
  description = ''An Atom, RSS, and JSONfeed parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."feednim-master".type = "github";
  inputs."feednim-master".owner = "riinr";
  inputs."feednim-master".repo = "flake-nimble";
  inputs."feednim-master".ref = "flake-pinning";
  inputs."feednim-master".dir = "nimpkgs/f/feednim/master";
  inputs."feednim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feednim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}