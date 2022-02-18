{
  description = ''curl statistics made simple '';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."httpstat-develop".type = "github";
  inputs."httpstat-develop".owner = "riinr";
  inputs."httpstat-develop".repo = "flake-nimble";
  inputs."httpstat-develop".ref = "flake-pinning";
  inputs."httpstat-develop".dir = "nimpkgs/h/httpstat/develop";

    inputs."httpstat-master".type = "github";
  inputs."httpstat-master".owner = "riinr";
  inputs."httpstat-master".repo = "flake-nimble";
  inputs."httpstat-master".ref = "flake-pinning";
  inputs."httpstat-master".dir = "nimpkgs/h/httpstat/master";

    inputs."httpstat-v0_1_0".type = "github";
  inputs."httpstat-v0_1_0".owner = "riinr";
  inputs."httpstat-v0_1_0".repo = "flake-nimble";
  inputs."httpstat-v0_1_0".ref = "flake-pinning";
  inputs."httpstat-v0_1_0".dir = "nimpkgs/h/httpstat/v0_1_0";

    inputs."httpstat-v0_1_1".type = "github";
  inputs."httpstat-v0_1_1".owner = "riinr";
  inputs."httpstat-v0_1_1".repo = "flake-nimble";
  inputs."httpstat-v0_1_1".ref = "flake-pinning";
  inputs."httpstat-v0_1_1".dir = "nimpkgs/h/httpstat/v0_1_1";

    inputs."httpstat-v0_1_2".type = "github";
  inputs."httpstat-v0_1_2".owner = "riinr";
  inputs."httpstat-v0_1_2".repo = "flake-nimble";
  inputs."httpstat-v0_1_2".ref = "flake-pinning";
  inputs."httpstat-v0_1_2".dir = "nimpkgs/h/httpstat/v0_1_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}