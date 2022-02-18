{
  description = ''The SHIORI DLL interface'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."shioridll-master".type = "github";
  inputs."shioridll-master".owner = "riinr";
  inputs."shioridll-master".repo = "flake-nimble";
  inputs."shioridll-master".ref = "flake-pinning";
  inputs."shioridll-master".dir = "nimpkgs/s/shioridll/master";

    inputs."shioridll-v1_0_0".type = "github";
  inputs."shioridll-v1_0_0".owner = "riinr";
  inputs."shioridll-v1_0_0".repo = "flake-nimble";
  inputs."shioridll-v1_0_0".ref = "flake-pinning";
  inputs."shioridll-v1_0_0".dir = "nimpkgs/s/shioridll/v1_0_0";

    inputs."shioridll-v1_0_1".type = "github";
  inputs."shioridll-v1_0_1".owner = "riinr";
  inputs."shioridll-v1_0_1".repo = "flake-nimble";
  inputs."shioridll-v1_0_1".ref = "flake-pinning";
  inputs."shioridll-v1_0_1".dir = "nimpkgs/s/shioridll/v1_0_1";

    inputs."shioridll-v2_0_0".type = "github";
  inputs."shioridll-v2_0_0".owner = "riinr";
  inputs."shioridll-v2_0_0".repo = "flake-nimble";
  inputs."shioridll-v2_0_0".ref = "flake-pinning";
  inputs."shioridll-v2_0_0".dir = "nimpkgs/s/shioridll/v2_0_0";

    inputs."shioridll-v3_0_0".type = "github";
  inputs."shioridll-v3_0_0".owner = "riinr";
  inputs."shioridll-v3_0_0".repo = "flake-nimble";
  inputs."shioridll-v3_0_0".ref = "flake-pinning";
  inputs."shioridll-v3_0_0".dir = "nimpkgs/s/shioridll/v3_0_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}