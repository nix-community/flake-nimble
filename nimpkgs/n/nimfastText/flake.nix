{
  description = ''fastText wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimfastText-master".type = "github";
  inputs."nimfastText-master".owner = "riinr";
  inputs."nimfastText-master".repo = "flake-nimble";
  inputs."nimfastText-master".ref = "flake-pinning";
  inputs."nimfastText-master".dir = "nimpkgs/n/nimfastText/master";

    inputs."nimfastText-v0_1_0".type = "github";
  inputs."nimfastText-v0_1_0".owner = "riinr";
  inputs."nimfastText-v0_1_0".repo = "flake-nimble";
  inputs."nimfastText-v0_1_0".ref = "flake-pinning";
  inputs."nimfastText-v0_1_0".dir = "nimpkgs/n/nimfastText/v0_1_0";

    inputs."nimfastText-v0_1_2".type = "github";
  inputs."nimfastText-v0_1_2".owner = "riinr";
  inputs."nimfastText-v0_1_2".repo = "flake-nimble";
  inputs."nimfastText-v0_1_2".ref = "flake-pinning";
  inputs."nimfastText-v0_1_2".dir = "nimpkgs/n/nimfastText/v0_1_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}