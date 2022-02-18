{
  description = ''AWS Security Token Service API in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."awsSTS-main".type = "github";
  inputs."awsSTS-main".owner = "riinr";
  inputs."awsSTS-main".repo = "flake-nimble";
  inputs."awsSTS-main".ref = "flake-pinning";
  inputs."awsSTS-main".dir = "nimpkgs/a/awsSTS/main";

    inputs."awsSTS-v1_0_0".type = "github";
  inputs."awsSTS-v1_0_0".owner = "riinr";
  inputs."awsSTS-v1_0_0".repo = "flake-nimble";
  inputs."awsSTS-v1_0_0".ref = "flake-pinning";
  inputs."awsSTS-v1_0_0".dir = "nimpkgs/a/awsSTS/v1_0_0";

    inputs."awsSTS-v1_0_1".type = "github";
  inputs."awsSTS-v1_0_1".owner = "riinr";
  inputs."awsSTS-v1_0_1".repo = "flake-nimble";
  inputs."awsSTS-v1_0_1".ref = "flake-pinning";
  inputs."awsSTS-v1_0_1".dir = "nimpkgs/a/awsSTS/v1_0_1";

    inputs."awsSTS-v1_0_2".type = "github";
  inputs."awsSTS-v1_0_2".owner = "riinr";
  inputs."awsSTS-v1_0_2".repo = "flake-nimble";
  inputs."awsSTS-v1_0_2".ref = "flake-pinning";
  inputs."awsSTS-v1_0_2".dir = "nimpkgs/a/awsSTS/v1_0_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}