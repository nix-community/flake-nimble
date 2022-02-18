{
  description = ''A RPC framework for building web APIs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nerve-master".type = "github";
  inputs."nerve-master".owner = "riinr";
  inputs."nerve-master".repo = "flake-nimble";
  inputs."nerve-master".ref = "flake-pinning";
  inputs."nerve-master".dir = "nimpkgs/n/nerve/master";

    inputs."nerve-0_1_0".type = "github";
  inputs."nerve-0_1_0".owner = "riinr";
  inputs."nerve-0_1_0".repo = "flake-nimble";
  inputs."nerve-0_1_0".ref = "flake-pinning";
  inputs."nerve-0_1_0".dir = "nimpkgs/n/nerve/0_1_0";

    inputs."nerve-0_1_1".type = "github";
  inputs."nerve-0_1_1".owner = "riinr";
  inputs."nerve-0_1_1".repo = "flake-nimble";
  inputs."nerve-0_1_1".ref = "flake-pinning";
  inputs."nerve-0_1_1".dir = "nimpkgs/n/nerve/0_1_1";

    inputs."nerve-0_2_0".type = "github";
  inputs."nerve-0_2_0".owner = "riinr";
  inputs."nerve-0_2_0".repo = "flake-nimble";
  inputs."nerve-0_2_0".ref = "flake-pinning";
  inputs."nerve-0_2_0".dir = "nimpkgs/n/nerve/0_2_0";

    inputs."nerve-0_3_0".type = "github";
  inputs."nerve-0_3_0".owner = "riinr";
  inputs."nerve-0_3_0".repo = "flake-nimble";
  inputs."nerve-0_3_0".ref = "flake-pinning";
  inputs."nerve-0_3_0".dir = "nimpkgs/n/nerve/0_3_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}