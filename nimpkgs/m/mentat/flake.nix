{
  description = ''A Nim library for data science and machine learning'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."mentat-master".type = "github";
  inputs."mentat-master".owner = "riinr";
  inputs."mentat-master".repo = "flake-nimble";
  inputs."mentat-master".ref = "flake-pinning";
  inputs."mentat-master".dir = "nimpkgs/m/mentat/master";

    inputs."mentat-v0_1_0".type = "github";
  inputs."mentat-v0_1_0".owner = "riinr";
  inputs."mentat-v0_1_0".repo = "flake-nimble";
  inputs."mentat-v0_1_0".ref = "flake-pinning";
  inputs."mentat-v0_1_0".dir = "nimpkgs/m/mentat/v0_1_0";

    inputs."mentat-v0_1_1".type = "github";
  inputs."mentat-v0_1_1".owner = "riinr";
  inputs."mentat-v0_1_1".repo = "flake-nimble";
  inputs."mentat-v0_1_1".ref = "flake-pinning";
  inputs."mentat-v0_1_1".dir = "nimpkgs/m/mentat/v0_1_1";

    inputs."mentat-v0_1_2".type = "github";
  inputs."mentat-v0_1_2".owner = "riinr";
  inputs."mentat-v0_1_2".repo = "flake-nimble";
  inputs."mentat-v0_1_2".ref = "flake-pinning";
  inputs."mentat-v0_1_2".dir = "nimpkgs/m/mentat/v0_1_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}