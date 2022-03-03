{
  description = ''JSON Web Tokens for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."jwt-master".type = "github";
  inputs."jwt-master".owner = "riinr";
  inputs."jwt-master".repo = "flake-nimble";
  inputs."jwt-master".ref = "flake-pinning";
  inputs."jwt-master".dir = "nimpkgs/j/jwt/master";
  inputs."jwt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jwt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}