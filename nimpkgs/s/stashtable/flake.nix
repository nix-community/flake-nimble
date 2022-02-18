{
  description = ''Concurrent hash table'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."stashtable-master".type = "github";
  inputs."stashtable-master".owner = "riinr";
  inputs."stashtable-master".repo = "flake-nimble";
  inputs."stashtable-master".ref = "flake-pinning";
  inputs."stashtable-master".dir = "nimpkgs/s/stashtable/master";

    inputs."stashtable-1_0_0".type = "github";
  inputs."stashtable-1_0_0".owner = "riinr";
  inputs."stashtable-1_0_0".repo = "flake-nimble";
  inputs."stashtable-1_0_0".ref = "flake-pinning";
  inputs."stashtable-1_0_0".dir = "nimpkgs/s/stashtable/1_0_0";

    inputs."stashtable-1_1_0".type = "github";
  inputs."stashtable-1_1_0".owner = "riinr";
  inputs."stashtable-1_1_0".repo = "flake-nimble";
  inputs."stashtable-1_1_0".ref = "flake-pinning";
  inputs."stashtable-1_1_0".dir = "nimpkgs/s/stashtable/1_1_0";

    inputs."stashtable-1_2_0".type = "github";
  inputs."stashtable-1_2_0".owner = "riinr";
  inputs."stashtable-1_2_0".repo = "flake-nimble";
  inputs."stashtable-1_2_0".ref = "flake-pinning";
  inputs."stashtable-1_2_0".dir = "nimpkgs/s/stashtable/1_2_0";

    inputs."stashtable-1_2_1".type = "github";
  inputs."stashtable-1_2_1".owner = "riinr";
  inputs."stashtable-1_2_1".repo = "flake-nimble";
  inputs."stashtable-1_2_1".ref = "flake-pinning";
  inputs."stashtable-1_2_1".dir = "nimpkgs/s/stashtable/1_2_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
