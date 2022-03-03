{
  description = ''Nim Barreto-Naehrig pairing-friendly elliptic curve implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."bncurve-master".type = "github";
  inputs."bncurve-master".owner = "riinr";
  inputs."bncurve-master".repo = "flake-nimble";
  inputs."bncurve-master".ref = "flake-pinning";
  inputs."bncurve-master".dir = "nimpkgs/b/bncurve/master";
  inputs."bncurve-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bncurve-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}