{
  description = ''Asynchronous networking engine for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."reactor-master".type = "github";
  inputs."reactor-master".owner = "riinr";
  inputs."reactor-master".repo = "flake-nimble";
  inputs."reactor-master".ref = "flake-pinning";
  inputs."reactor-master".dir = "nimpkgs/r/reactor/master";

    inputs."reactor-v0_0_1".type = "github";
  inputs."reactor-v0_0_1".owner = "riinr";
  inputs."reactor-v0_0_1".repo = "flake-nimble";
  inputs."reactor-v0_0_1".ref = "flake-pinning";
  inputs."reactor-v0_0_1".dir = "nimpkgs/r/reactor/v0_0_1";

    inputs."reactor-v0_3_0".type = "github";
  inputs."reactor-v0_3_0".owner = "riinr";
  inputs."reactor-v0_3_0".repo = "flake-nimble";
  inputs."reactor-v0_3_0".ref = "flake-pinning";
  inputs."reactor-v0_3_0".dir = "nimpkgs/r/reactor/v0_3_0";

    inputs."reactor-v0_3_1".type = "github";
  inputs."reactor-v0_3_1".owner = "riinr";
  inputs."reactor-v0_3_1".repo = "flake-nimble";
  inputs."reactor-v0_3_1".ref = "flake-pinning";
  inputs."reactor-v0_3_1".dir = "nimpkgs/r/reactor/v0_3_1";

    inputs."reactor-v0_3_2".type = "github";
  inputs."reactor-v0_3_2".owner = "riinr";
  inputs."reactor-v0_3_2".repo = "flake-nimble";
  inputs."reactor-v0_3_2".ref = "flake-pinning";
  inputs."reactor-v0_3_2".dir = "nimpkgs/r/reactor/v0_3_2";

    inputs."reactor-v0_4_0".type = "github";
  inputs."reactor-v0_4_0".owner = "riinr";
  inputs."reactor-v0_4_0".repo = "flake-nimble";
  inputs."reactor-v0_4_0".ref = "flake-pinning";
  inputs."reactor-v0_4_0".dir = "nimpkgs/r/reactor/v0_4_0";

    inputs."reactor-v0_4_1".type = "github";
  inputs."reactor-v0_4_1".owner = "riinr";
  inputs."reactor-v0_4_1".repo = "flake-nimble";
  inputs."reactor-v0_4_1".ref = "flake-pinning";
  inputs."reactor-v0_4_1".dir = "nimpkgs/r/reactor/v0_4_1";

    inputs."reactor-v0_4_2".type = "github";
  inputs."reactor-v0_4_2".owner = "riinr";
  inputs."reactor-v0_4_2".repo = "flake-nimble";
  inputs."reactor-v0_4_2".ref = "flake-pinning";
  inputs."reactor-v0_4_2".dir = "nimpkgs/r/reactor/v0_4_2";

    inputs."reactor-v0_4_3".type = "github";
  inputs."reactor-v0_4_3".owner = "riinr";
  inputs."reactor-v0_4_3".repo = "flake-nimble";
  inputs."reactor-v0_4_3".ref = "flake-pinning";
  inputs."reactor-v0_4_3".dir = "nimpkgs/r/reactor/v0_4_3";

    inputs."reactor-v0_4_4".type = "github";
  inputs."reactor-v0_4_4".owner = "riinr";
  inputs."reactor-v0_4_4".repo = "flake-nimble";
  inputs."reactor-v0_4_4".ref = "flake-pinning";
  inputs."reactor-v0_4_4".dir = "nimpkgs/r/reactor/v0_4_4";

    inputs."reactor-v0_4_5".type = "github";
  inputs."reactor-v0_4_5".owner = "riinr";
  inputs."reactor-v0_4_5".repo = "flake-nimble";
  inputs."reactor-v0_4_5".ref = "flake-pinning";
  inputs."reactor-v0_4_5".dir = "nimpkgs/r/reactor/v0_4_5";

    inputs."reactor-v0_4_6".type = "github";
  inputs."reactor-v0_4_6".owner = "riinr";
  inputs."reactor-v0_4_6".repo = "flake-nimble";
  inputs."reactor-v0_4_6".ref = "flake-pinning";
  inputs."reactor-v0_4_6".dir = "nimpkgs/r/reactor/v0_4_6";

    inputs."reactor-v0_5_0".type = "github";
  inputs."reactor-v0_5_0".owner = "riinr";
  inputs."reactor-v0_5_0".repo = "flake-nimble";
  inputs."reactor-v0_5_0".ref = "flake-pinning";
  inputs."reactor-v0_5_0".dir = "nimpkgs/r/reactor/v0_5_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}