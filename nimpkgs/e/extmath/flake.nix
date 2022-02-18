{
  description = ''Nim math library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."extmath-master".type = "github";
  inputs."extmath-master".owner = "riinr";
  inputs."extmath-master".repo = "flake-nimble";
  inputs."extmath-master".ref = "flake-pinning";
  inputs."extmath-master".dir = "nimpkgs/e/extmath/master";

    inputs."extmath-v1_0".type = "github";
  inputs."extmath-v1_0".owner = "riinr";
  inputs."extmath-v1_0".repo = "flake-nimble";
  inputs."extmath-v1_0".ref = "flake-pinning";
  inputs."extmath-v1_0".dir = "nimpkgs/e/extmath/v1_0";

    inputs."extmath-v1_1".type = "github";
  inputs."extmath-v1_1".owner = "riinr";
  inputs."extmath-v1_1".repo = "flake-nimble";
  inputs."extmath-v1_1".ref = "flake-pinning";
  inputs."extmath-v1_1".dir = "nimpkgs/e/extmath/v1_1";

    inputs."extmath-v1_2".type = "github";
  inputs."extmath-v1_2".owner = "riinr";
  inputs."extmath-v1_2".repo = "flake-nimble";
  inputs."extmath-v1_2".ref = "flake-pinning";
  inputs."extmath-v1_2".dir = "nimpkgs/e/extmath/v1_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}