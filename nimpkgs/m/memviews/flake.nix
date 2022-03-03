{
  description = ''Unsafe in-place slicing'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."memviews-master".type = "github";
  inputs."memviews-master".owner = "riinr";
  inputs."memviews-master".repo = "flake-nimble";
  inputs."memviews-master".ref = "flake-pinning";
  inputs."memviews-master".dir = "nimpkgs/m/memviews/master";
  inputs."memviews-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."memviews-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}