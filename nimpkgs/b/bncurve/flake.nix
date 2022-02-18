{
  description = ''Nim Barreto-Naehrig pairing-friendly elliptic curve implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."bncurve-master".type = "github";
  inputs."bncurve-master".owner = "riinr";
  inputs."bncurve-master".repo = "flake-nimble";
  inputs."bncurve-master".ref = "flake-pinning";
  inputs."bncurve-master".dir = "nimpkgs/b/bncurve/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}