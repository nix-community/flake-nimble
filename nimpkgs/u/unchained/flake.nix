{
  description = ''Fully type safe, compile time only units library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."unchained-master".type = "github";
  inputs."unchained-master".owner = "riinr";
  inputs."unchained-master".repo = "flake-nimble";
  inputs."unchained-master".ref = "flake-pinning";
  inputs."unchained-master".dir = "nimpkgs/u/unchained/master";

    inputs."unchained-v0_1_0".type = "github";
  inputs."unchained-v0_1_0".owner = "riinr";
  inputs."unchained-v0_1_0".repo = "flake-nimble";
  inputs."unchained-v0_1_0".ref = "flake-pinning";
  inputs."unchained-v0_1_0".dir = "nimpkgs/u/unchained/v0_1_0";

    inputs."unchained-v0_1_1".type = "github";
  inputs."unchained-v0_1_1".owner = "riinr";
  inputs."unchained-v0_1_1".repo = "flake-nimble";
  inputs."unchained-v0_1_1".ref = "flake-pinning";
  inputs."unchained-v0_1_1".dir = "nimpkgs/u/unchained/v0_1_1";

    inputs."unchained-v0_1_3".type = "github";
  inputs."unchained-v0_1_3".owner = "riinr";
  inputs."unchained-v0_1_3".repo = "flake-nimble";
  inputs."unchained-v0_1_3".ref = "flake-pinning";
  inputs."unchained-v0_1_3".dir = "nimpkgs/u/unchained/v0_1_3";

    inputs."unchained-v0_1_4".type = "github";
  inputs."unchained-v0_1_4".owner = "riinr";
  inputs."unchained-v0_1_4".repo = "flake-nimble";
  inputs."unchained-v0_1_4".ref = "flake-pinning";
  inputs."unchained-v0_1_4".dir = "nimpkgs/u/unchained/v0_1_4";

    inputs."unchained-v0_1_5".type = "github";
  inputs."unchained-v0_1_5".owner = "riinr";
  inputs."unchained-v0_1_5".repo = "flake-nimble";
  inputs."unchained-v0_1_5".ref = "flake-pinning";
  inputs."unchained-v0_1_5".dir = "nimpkgs/u/unchained/v0_1_5";

    inputs."unchained-v0_1_6".type = "github";
  inputs."unchained-v0_1_6".owner = "riinr";
  inputs."unchained-v0_1_6".repo = "flake-nimble";
  inputs."unchained-v0_1_6".ref = "flake-pinning";
  inputs."unchained-v0_1_6".dir = "nimpkgs/u/unchained/v0_1_6";

    inputs."unchained-v0_1_7".type = "github";
  inputs."unchained-v0_1_7".owner = "riinr";
  inputs."unchained-v0_1_7".repo = "flake-nimble";
  inputs."unchained-v0_1_7".ref = "flake-pinning";
  inputs."unchained-v0_1_7".dir = "nimpkgs/u/unchained/v0_1_7";

    inputs."unchained-v0_1_8".type = "github";
  inputs."unchained-v0_1_8".owner = "riinr";
  inputs."unchained-v0_1_8".repo = "flake-nimble";
  inputs."unchained-v0_1_8".ref = "flake-pinning";
  inputs."unchained-v0_1_8".dir = "nimpkgs/u/unchained/v0_1_8";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}