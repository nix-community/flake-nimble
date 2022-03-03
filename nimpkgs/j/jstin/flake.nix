{
  description = ''JS {de,}serialization as it says on the tin'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."jstin-master".type = "github";
  inputs."jstin-master".owner = "riinr";
  inputs."jstin-master".repo = "flake-nimble";
  inputs."jstin-master".ref = "flake-pinning";
  inputs."jstin-master".dir = "nimpkgs/j/jstin/master";
  inputs."jstin-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jstin-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}