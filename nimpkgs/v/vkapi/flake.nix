{
  description = ''A wrapper for the vk.com API (russian social network)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."vkapi-master".type = "github";
  inputs."vkapi-master".owner = "riinr";
  inputs."vkapi-master".repo = "flake-nimble";
  inputs."vkapi-master".ref = "flake-pinning";
  inputs."vkapi-master".dir = "nimpkgs/v/vkapi/master";

    inputs."vkapi-v0_1_0".type = "github";
  inputs."vkapi-v0_1_0".owner = "riinr";
  inputs."vkapi-v0_1_0".repo = "flake-nimble";
  inputs."vkapi-v0_1_0".ref = "flake-pinning";
  inputs."vkapi-v0_1_0".dir = "nimpkgs/v/vkapi/v0_1_0";

    inputs."vkapi-v1_0_0".type = "github";
  inputs."vkapi-v1_0_0".owner = "riinr";
  inputs."vkapi-v1_0_0".repo = "flake-nimble";
  inputs."vkapi-v1_0_0".ref = "flake-pinning";
  inputs."vkapi-v1_0_0".dir = "nimpkgs/v/vkapi/v1_0_0";

    inputs."vkapi-v1_1_0".type = "github";
  inputs."vkapi-v1_1_0".owner = "riinr";
  inputs."vkapi-v1_1_0".repo = "flake-nimble";
  inputs."vkapi-v1_1_0".ref = "flake-pinning";
  inputs."vkapi-v1_1_0".dir = "nimpkgs/v/vkapi/v1_1_0";

    inputs."vkapi-v1_2_0".type = "github";
  inputs."vkapi-v1_2_0".owner = "riinr";
  inputs."vkapi-v1_2_0".repo = "flake-nimble";
  inputs."vkapi-v1_2_0".ref = "flake-pinning";
  inputs."vkapi-v1_2_0".dir = "nimpkgs/v/vkapi/v1_2_0";

    inputs."vkapi-v1_2_1".type = "github";
  inputs."vkapi-v1_2_1".owner = "riinr";
  inputs."vkapi-v1_2_1".repo = "flake-nimble";
  inputs."vkapi-v1_2_1".ref = "flake-pinning";
  inputs."vkapi-v1_2_1".dir = "nimpkgs/v/vkapi/v1_2_1";

    inputs."vkapi-v1_3_0".type = "github";
  inputs."vkapi-v1_3_0".owner = "riinr";
  inputs."vkapi-v1_3_0".repo = "flake-nimble";
  inputs."vkapi-v1_3_0".ref = "flake-pinning";
  inputs."vkapi-v1_3_0".dir = "nimpkgs/v/vkapi/v1_3_0";

    inputs."vkapi-v1_3_1".type = "github";
  inputs."vkapi-v1_3_1".owner = "riinr";
  inputs."vkapi-v1_3_1".repo = "flake-nimble";
  inputs."vkapi-v1_3_1".ref = "flake-pinning";
  inputs."vkapi-v1_3_1".dir = "nimpkgs/v/vkapi/v1_3_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}