{
  description = ''funchook wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."funchook-master".type = "github";
  inputs."funchook-master".owner = "riinr";
  inputs."funchook-master".repo = "flake-nimble";
  inputs."funchook-master".ref = "flake-pinning";
  inputs."funchook-master".dir = "nimpkgs/f/funchook/master";

    inputs."funchook-0_1_1".type = "github";
  inputs."funchook-0_1_1".owner = "riinr";
  inputs."funchook-0_1_1".repo = "flake-nimble";
  inputs."funchook-0_1_1".ref = "flake-pinning";
  inputs."funchook-0_1_1".dir = "nimpkgs/f/funchook/0_1_1";

    inputs."funchook-0_1_2".type = "github";
  inputs."funchook-0_1_2".owner = "riinr";
  inputs."funchook-0_1_2".repo = "flake-nimble";
  inputs."funchook-0_1_2".ref = "flake-pinning";
  inputs."funchook-0_1_2".dir = "nimpkgs/f/funchook/0_1_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}