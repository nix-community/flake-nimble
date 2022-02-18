{
  description = ''Fuzzy search wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimfuzzy-master".type = "github";
  inputs."nimfuzzy-master".owner = "riinr";
  inputs."nimfuzzy-master".repo = "flake-nimble";
  inputs."nimfuzzy-master".ref = "flake-pinning";
  inputs."nimfuzzy-master".dir = "nimpkgs/n/nimfuzzy/master";

    inputs."nimfuzzy-v0_1_0".type = "github";
  inputs."nimfuzzy-v0_1_0".owner = "riinr";
  inputs."nimfuzzy-v0_1_0".repo = "flake-nimble";
  inputs."nimfuzzy-v0_1_0".ref = "flake-pinning";
  inputs."nimfuzzy-v0_1_0".dir = "nimpkgs/n/nimfuzzy/v0_1_0";

    inputs."nimfuzzy-v0_1_2".type = "github";
  inputs."nimfuzzy-v0_1_2".owner = "riinr";
  inputs."nimfuzzy-v0_1_2".repo = "flake-nimble";
  inputs."nimfuzzy-v0_1_2".ref = "flake-pinning";
  inputs."nimfuzzy-v0_1_2".dir = "nimpkgs/n/nimfuzzy/v0_1_2";

    inputs."nimfuzzy-v0_1_3".type = "github";
  inputs."nimfuzzy-v0_1_3".owner = "riinr";
  inputs."nimfuzzy-v0_1_3".repo = "flake-nimble";
  inputs."nimfuzzy-v0_1_3".ref = "flake-pinning";
  inputs."nimfuzzy-v0_1_3".dir = "nimpkgs/n/nimfuzzy/v0_1_3";

    inputs."nimfuzzy-v0_1_4".type = "github";
  inputs."nimfuzzy-v0_1_4".owner = "riinr";
  inputs."nimfuzzy-v0_1_4".repo = "flake-nimble";
  inputs."nimfuzzy-v0_1_4".ref = "flake-pinning";
  inputs."nimfuzzy-v0_1_4".dir = "nimpkgs/n/nimfuzzy/v0_1_4";

    inputs."nimfuzzy-v0_1_5".type = "github";
  inputs."nimfuzzy-v0_1_5".owner = "riinr";
  inputs."nimfuzzy-v0_1_5".repo = "flake-nimble";
  inputs."nimfuzzy-v0_1_5".ref = "flake-pinning";
  inputs."nimfuzzy-v0_1_5".dir = "nimpkgs/n/nimfuzzy/v0_1_5";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}