{
  description = ''Kinto Client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."Kinto-master".type = "github";
  inputs."Kinto-master".owner = "riinr";
  inputs."Kinto-master".repo = "flake-nimble";
  inputs."Kinto-master".ref = "flake-pinning";
  inputs."Kinto-master".dir = "nimpkgs/k/Kinto/master";

    inputs."Kinto-0_2_0".type = "github";
  inputs."Kinto-0_2_0".owner = "riinr";
  inputs."Kinto-0_2_0".repo = "flake-nimble";
  inputs."Kinto-0_2_0".ref = "flake-pinning";
  inputs."Kinto-0_2_0".dir = "nimpkgs/k/Kinto/0_2_0";

    inputs."Kinto-0_2_2".type = "github";
  inputs."Kinto-0_2_2".owner = "riinr";
  inputs."Kinto-0_2_2".repo = "flake-nimble";
  inputs."Kinto-0_2_2".ref = "flake-pinning";
  inputs."Kinto-0_2_2".dir = "nimpkgs/k/Kinto/0_2_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}