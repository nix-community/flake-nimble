{
  description = ''PCRE wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimpcre-master".type = "github";
  inputs."nimpcre-master".owner = "riinr";
  inputs."nimpcre-master".repo = "flake-nimble";
  inputs."nimpcre-master".ref = "flake-pinning";
  inputs."nimpcre-master".dir = "nimpkgs/n/nimpcre/master";

    inputs."nimpcre-v0_1_0".type = "github";
  inputs."nimpcre-v0_1_0".owner = "riinr";
  inputs."nimpcre-v0_1_0".repo = "flake-nimble";
  inputs."nimpcre-v0_1_0".ref = "flake-pinning";
  inputs."nimpcre-v0_1_0".dir = "nimpkgs/n/nimpcre/v0_1_0";

    inputs."nimpcre-v0_1_1".type = "github";
  inputs."nimpcre-v0_1_1".owner = "riinr";
  inputs."nimpcre-v0_1_1".repo = "flake-nimble";
  inputs."nimpcre-v0_1_1".ref = "flake-pinning";
  inputs."nimpcre-v0_1_1".dir = "nimpkgs/n/nimpcre/v0_1_1";

    inputs."nimpcre-v0_1_2".type = "github";
  inputs."nimpcre-v0_1_2".owner = "riinr";
  inputs."nimpcre-v0_1_2".repo = "flake-nimble";
  inputs."nimpcre-v0_1_2".ref = "flake-pinning";
  inputs."nimpcre-v0_1_2".dir = "nimpkgs/n/nimpcre/v0_1_2";

    inputs."nimpcre-v0_1_3".type = "github";
  inputs."nimpcre-v0_1_3".owner = "riinr";
  inputs."nimpcre-v0_1_3".repo = "flake-nimble";
  inputs."nimpcre-v0_1_3".ref = "flake-pinning";
  inputs."nimpcre-v0_1_3".dir = "nimpkgs/n/nimpcre/v0_1_3";

    inputs."nimpcre-v0_1_4".type = "github";
  inputs."nimpcre-v0_1_4".owner = "riinr";
  inputs."nimpcre-v0_1_4".repo = "flake-nimble";
  inputs."nimpcre-v0_1_4".ref = "flake-pinning";
  inputs."nimpcre-v0_1_4".dir = "nimpkgs/n/nimpcre/v0_1_4";

    inputs."nimpcre-v0_2_0".type = "github";
  inputs."nimpcre-v0_2_0".owner = "riinr";
  inputs."nimpcre-v0_2_0".repo = "flake-nimble";
  inputs."nimpcre-v0_2_0".ref = "flake-pinning";
  inputs."nimpcre-v0_2_0".dir = "nimpkgs/n/nimpcre/v0_2_0";

    inputs."nimpcre-v0_2_1".type = "github";
  inputs."nimpcre-v0_2_1".owner = "riinr";
  inputs."nimpcre-v0_2_1".repo = "flake-nimble";
  inputs."nimpcre-v0_2_1".ref = "flake-pinning";
  inputs."nimpcre-v0_2_1".dir = "nimpkgs/n/nimpcre/v0_2_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}