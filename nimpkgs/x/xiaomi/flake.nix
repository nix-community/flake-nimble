{
  description = ''Read and write to Xiaomi IOT devices.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."xiaomi-master".type = "github";
  inputs."xiaomi-master".owner = "riinr";
  inputs."xiaomi-master".repo = "flake-nimble";
  inputs."xiaomi-master".ref = "flake-pinning";
  inputs."xiaomi-master".dir = "nimpkgs/x/xiaomi/master";

    inputs."xiaomi-v0_1_1".type = "github";
  inputs."xiaomi-v0_1_1".owner = "riinr";
  inputs."xiaomi-v0_1_1".repo = "flake-nimble";
  inputs."xiaomi-v0_1_1".ref = "flake-pinning";
  inputs."xiaomi-v0_1_1".dir = "nimpkgs/x/xiaomi/v0_1_1";

    inputs."xiaomi-v0_1_2".type = "github";
  inputs."xiaomi-v0_1_2".owner = "riinr";
  inputs."xiaomi-v0_1_2".repo = "flake-nimble";
  inputs."xiaomi-v0_1_2".ref = "flake-pinning";
  inputs."xiaomi-v0_1_2".dir = "nimpkgs/x/xiaomi/v0_1_2";

    inputs."xiaomi-v0_1_3".type = "github";
  inputs."xiaomi-v0_1_3".owner = "riinr";
  inputs."xiaomi-v0_1_3".repo = "flake-nimble";
  inputs."xiaomi-v0_1_3".ref = "flake-pinning";
  inputs."xiaomi-v0_1_3".dir = "nimpkgs/x/xiaomi/v0_1_3";

    inputs."xiaomi-v0_1_4".type = "github";
  inputs."xiaomi-v0_1_4".owner = "riinr";
  inputs."xiaomi-v0_1_4".repo = "flake-nimble";
  inputs."xiaomi-v0_1_4".ref = "flake-pinning";
  inputs."xiaomi-v0_1_4".dir = "nimpkgs/x/xiaomi/v0_1_4";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}