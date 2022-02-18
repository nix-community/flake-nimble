{
  description = ''For karax html preview.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."kview-master".type = "github";
  inputs."kview-master".owner = "riinr";
  inputs."kview-master".repo = "flake-nimble";
  inputs."kview-master".ref = "flake-pinning";
  inputs."kview-master".dir = "nimpkgs/k/kview/master";

    inputs."kview-v0_1_0".type = "github";
  inputs."kview-v0_1_0".owner = "riinr";
  inputs."kview-v0_1_0".repo = "flake-nimble";
  inputs."kview-v0_1_0".ref = "flake-pinning";
  inputs."kview-v0_1_0".dir = "nimpkgs/k/kview/v0_1_0";

    inputs."kview-v0_1_2".type = "github";
  inputs."kview-v0_1_2".owner = "riinr";
  inputs."kview-v0_1_2".repo = "flake-nimble";
  inputs."kview-v0_1_2".ref = "flake-pinning";
  inputs."kview-v0_1_2".dir = "nimpkgs/k/kview/v0_1_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}