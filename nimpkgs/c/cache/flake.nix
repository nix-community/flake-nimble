{
  description = ''A cache library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."cache-master".type = "github";
  inputs."cache-master".owner = "riinr";
  inputs."cache-master".repo = "flake-nimble";
  inputs."cache-master".ref = "flake-pinning";
  inputs."cache-master".dir = "nimpkgs/c/cache/master";
  inputs."cache-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cache-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}