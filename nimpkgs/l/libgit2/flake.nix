{
  description = ''Libgit2 low level wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."libgit2-master".type = "github";
  inputs."libgit2-master".owner = "riinr";
  inputs."libgit2-master".repo = "flake-nimble";
  inputs."libgit2-master".ref = "flake-pinning";
  inputs."libgit2-master".dir = "nimpkgs/l/libgit2/master";
  inputs."libgit2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libgit2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}