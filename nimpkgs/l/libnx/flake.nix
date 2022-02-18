{
  description = ''A port of libnx to Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."libnx-master".type = "github";
  inputs."libnx-master".owner = "riinr";
  inputs."libnx-master".repo = "flake-nimble";
  inputs."libnx-master".ref = "flake-pinning";
  inputs."libnx-master".dir = "nimpkgs/l/libnx/master";

    inputs."libnx-0_1_6".type = "github";
  inputs."libnx-0_1_6".owner = "riinr";
  inputs."libnx-0_1_6".repo = "flake-nimble";
  inputs."libnx-0_1_6".ref = "flake-pinning";
  inputs."libnx-0_1_6".dir = "nimpkgs/l/libnx/0_1_6";

    inputs."libnx-0_1_8".type = "github";
  inputs."libnx-0_1_8".owner = "riinr";
  inputs."libnx-0_1_8".repo = "flake-nimble";
  inputs."libnx-0_1_8".ref = "flake-pinning";
  inputs."libnx-0_1_8".dir = "nimpkgs/l/libnx/0_1_8";

    inputs."libnx-0_2_1".type = "github";
  inputs."libnx-0_2_1".owner = "riinr";
  inputs."libnx-0_2_1".repo = "flake-nimble";
  inputs."libnx-0_2_1".ref = "flake-pinning";
  inputs."libnx-0_2_1".dir = "nimpkgs/l/libnx/0_2_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}