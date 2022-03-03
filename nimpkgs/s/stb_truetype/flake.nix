{
  description = ''Nim bindings for stb_truetype.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."stb_truetype-master".type = "github";
  inputs."stb_truetype-master".owner = "riinr";
  inputs."stb_truetype-master".repo = "flake-nimble";
  inputs."stb_truetype-master".ref = "flake-pinning";
  inputs."stb_truetype-master".dir = "nimpkgs/s/stb_truetype/master";
  inputs."stb_truetype-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_truetype-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."stb_truetype-0_0_1".type = "github";
  inputs."stb_truetype-0_0_1".owner = "riinr";
  inputs."stb_truetype-0_0_1".repo = "flake-nimble";
  inputs."stb_truetype-0_0_1".ref = "flake-pinning";
  inputs."stb_truetype-0_0_1".dir = "nimpkgs/s/stb_truetype/0_0_1";
  inputs."stb_truetype-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_truetype-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}