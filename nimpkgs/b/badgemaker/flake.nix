{
  description = ''The Nim badgemaker tool.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."badgemaker-master".type = "github";
  inputs."badgemaker-master".owner = "riinr";
  inputs."badgemaker-master".repo = "flake-nimble";
  inputs."badgemaker-master".ref = "flake-pinning";
  inputs."badgemaker-master".dir = "nimpkgs/b/badgemaker/master";
  inputs."badgemaker-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."badgemaker-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}