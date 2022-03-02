{
  description = ''Arbitrary base encoding-decoding functions, defaulting to Base-62.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."base62-master".type = "github";
  inputs."base62-master".owner = "riinr";
  inputs."base62-master".repo = "flake-nimble";
  inputs."base62-master".ref = "flake-pinning";
  inputs."base62-master".dir = "nimpkgs/b/base62/master";
  inputs."base62-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."base62-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}