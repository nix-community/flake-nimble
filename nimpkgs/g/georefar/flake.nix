{
  description = ''GeoRef Argentina Government MultiSync API Client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."georefar-master".type = "github";
  inputs."georefar-master".owner = "riinr";
  inputs."georefar-master".repo = "flake-nimble";
  inputs."georefar-master".ref = "flake-pinning";
  inputs."georefar-master".dir = "nimpkgs/g/georefar/master";

    inputs."georefar-0_1_5".type = "github";
  inputs."georefar-0_1_5".owner = "riinr";
  inputs."georefar-0_1_5".repo = "flake-nimble";
  inputs."georefar-0_1_5".ref = "flake-pinning";
  inputs."georefar-0_1_5".dir = "nimpkgs/g/georefar/0_1_5";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}