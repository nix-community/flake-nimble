{
  description = ''Nim module for working with Firefox bookmarks'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ffbookmarks-master".type = "github";
  inputs."ffbookmarks-master".owner = "riinr";
  inputs."ffbookmarks-master".repo = "flake-nimble";
  inputs."ffbookmarks-master".ref = "flake-pinning";
  inputs."ffbookmarks-master".dir = "nimpkgs/f/ffbookmarks/master";
  inputs."ffbookmarks-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ffbookmarks-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}