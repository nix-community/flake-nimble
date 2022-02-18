{
  description = ''USIG Argentina Government MultiSync API Client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."usigar-master".type = "github";
  inputs."usigar-master".owner = "riinr";
  inputs."usigar-master".repo = "flake-nimble";
  inputs."usigar-master".ref = "flake-pinning";
  inputs."usigar-master".dir = "nimpkgs/u/usigar/master";

    inputs."usigar-0_1_5".type = "github";
  inputs."usigar-0_1_5".owner = "riinr";
  inputs."usigar-0_1_5".repo = "flake-nimble";
  inputs."usigar-0_1_5".ref = "flake-pinning";
  inputs."usigar-0_1_5".dir = "nimpkgs/u/usigar/0_1_5";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}