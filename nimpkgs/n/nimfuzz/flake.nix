{
  description = ''Simple and compact fuzzing'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimfuzz-master".type = "github";
  inputs."nimfuzz-master".owner = "riinr";
  inputs."nimfuzz-master".repo = "flake-nimble";
  inputs."nimfuzz-master".ref = "flake-pinning";
  inputs."nimfuzz-master".dir = "nimpkgs/n/nimfuzz/master";

    inputs."nimfuzz-1_2_0".type = "github";
  inputs."nimfuzz-1_2_0".owner = "riinr";
  inputs."nimfuzz-1_2_0".repo = "flake-nimble";
  inputs."nimfuzz-1_2_0".ref = "flake-pinning";
  inputs."nimfuzz-1_2_0".dir = "nimpkgs/n/nimfuzz/1_2_0";

    inputs."nimfuzz-v1_0_0".type = "github";
  inputs."nimfuzz-v1_0_0".owner = "riinr";
  inputs."nimfuzz-v1_0_0".repo = "flake-nimble";
  inputs."nimfuzz-v1_0_0".ref = "flake-pinning";
  inputs."nimfuzz-v1_0_0".dir = "nimpkgs/n/nimfuzz/v1_0_0";

    inputs."nimfuzz-v1_1_0".type = "github";
  inputs."nimfuzz-v1_1_0".owner = "riinr";
  inputs."nimfuzz-v1_1_0".repo = "flake-nimble";
  inputs."nimfuzz-v1_1_0".ref = "flake-pinning";
  inputs."nimfuzz-v1_1_0".dir = "nimpkgs/n/nimfuzz/v1_1_0";

    inputs."nimfuzz-v1_3_0".type = "github";
  inputs."nimfuzz-v1_3_0".owner = "riinr";
  inputs."nimfuzz-v1_3_0".repo = "flake-nimble";
  inputs."nimfuzz-v1_3_0".ref = "flake-pinning";
  inputs."nimfuzz-v1_3_0".dir = "nimpkgs/n/nimfuzz/v1_3_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}