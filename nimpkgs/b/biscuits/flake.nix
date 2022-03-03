{
  description = ''better cookie handling'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."biscuits-master".type = "github";
  inputs."biscuits-master".owner = "riinr";
  inputs."biscuits-master".repo = "flake-nimble";
  inputs."biscuits-master".ref = "flake-pinning";
  inputs."biscuits-master".dir = "nimpkgs/b/biscuits/master";
  inputs."biscuits-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."biscuits-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}