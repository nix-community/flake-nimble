{
  description = ''Port of c++ glm library with shader-like syntax'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."glm-master".type = "github";
  inputs."glm-master".owner = "riinr";
  inputs."glm-master".repo = "flake-nimble";
  inputs."glm-master".ref = "flake-pinning";
  inputs."glm-master".dir = "nimpkgs/g/glm/master";

    inputs."glm-v1_0_0".type = "github";
  inputs."glm-v1_0_0".owner = "riinr";
  inputs."glm-v1_0_0".repo = "flake-nimble";
  inputs."glm-v1_0_0".ref = "flake-pinning";
  inputs."glm-v1_0_0".dir = "nimpkgs/g/glm/v1_0_0";

    inputs."glm-v1_0_1".type = "github";
  inputs."glm-v1_0_1".owner = "riinr";
  inputs."glm-v1_0_1".repo = "flake-nimble";
  inputs."glm-v1_0_1".ref = "flake-pinning";
  inputs."glm-v1_0_1".dir = "nimpkgs/g/glm/v1_0_1";

    inputs."glm-v1_0_2".type = "github";
  inputs."glm-v1_0_2".owner = "riinr";
  inputs."glm-v1_0_2".repo = "flake-nimble";
  inputs."glm-v1_0_2".ref = "flake-pinning";
  inputs."glm-v1_0_2".dir = "nimpkgs/g/glm/v1_0_2";

    inputs."glm-v1_1_0".type = "github";
  inputs."glm-v1_1_0".owner = "riinr";
  inputs."glm-v1_1_0".repo = "flake-nimble";
  inputs."glm-v1_1_0".ref = "flake-pinning";
  inputs."glm-v1_1_0".dir = "nimpkgs/g/glm/v1_1_0";

    inputs."glm-v1_1_1".type = "github";
  inputs."glm-v1_1_1".owner = "riinr";
  inputs."glm-v1_1_1".repo = "flake-nimble";
  inputs."glm-v1_1_1".ref = "flake-pinning";
  inputs."glm-v1_1_1".dir = "nimpkgs/g/glm/v1_1_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}