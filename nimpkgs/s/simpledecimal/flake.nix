{
  description = ''A simple decimal library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."simpledecimal-master".type = "github";
  inputs."simpledecimal-master".owner = "riinr";
  inputs."simpledecimal-master".repo = "flake-nimble";
  inputs."simpledecimal-master".ref = "flake-pinning";
  inputs."simpledecimal-master".dir = "nimpkgs/s/simpledecimal/master";

    inputs."simpledecimal-0_1_0".type = "github";
  inputs."simpledecimal-0_1_0".owner = "riinr";
  inputs."simpledecimal-0_1_0".repo = "flake-nimble";
  inputs."simpledecimal-0_1_0".ref = "flake-pinning";
  inputs."simpledecimal-0_1_0".dir = "nimpkgs/s/simpledecimal/0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}