{
  description = ''A super-fast epoll-backed and parallel HTTP server.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."httpx-master".type = "github";
  inputs."httpx-master".owner = "riinr";
  inputs."httpx-master".repo = "flake-nimble";
  inputs."httpx-master".ref = "flake-pinning";
  inputs."httpx-master".dir = "nimpkgs/h/httpx/master";

    inputs."httpx-v0_1_0".type = "github";
  inputs."httpx-v0_1_0".owner = "riinr";
  inputs."httpx-v0_1_0".repo = "flake-nimble";
  inputs."httpx-v0_1_0".ref = "flake-pinning";
  inputs."httpx-v0_1_0".dir = "nimpkgs/h/httpx/v0_1_0";

    inputs."httpx-v0_1_2".type = "github";
  inputs."httpx-v0_1_2".owner = "riinr";
  inputs."httpx-v0_1_2".repo = "flake-nimble";
  inputs."httpx-v0_1_2".ref = "flake-pinning";
  inputs."httpx-v0_1_2".dir = "nimpkgs/h/httpx/v0_1_2";

    inputs."httpx-v0_1_4".type = "github";
  inputs."httpx-v0_1_4".owner = "riinr";
  inputs."httpx-v0_1_4".repo = "flake-nimble";
  inputs."httpx-v0_1_4".ref = "flake-pinning";
  inputs."httpx-v0_1_4".dir = "nimpkgs/h/httpx/v0_1_4";

    inputs."httpx-v0_1_6".type = "github";
  inputs."httpx-v0_1_6".owner = "riinr";
  inputs."httpx-v0_1_6".repo = "flake-nimble";
  inputs."httpx-v0_1_6".ref = "flake-pinning";
  inputs."httpx-v0_1_6".dir = "nimpkgs/h/httpx/v0_1_6";

    inputs."httpx-v0_1_8".type = "github";
  inputs."httpx-v0_1_8".owner = "riinr";
  inputs."httpx-v0_1_8".repo = "flake-nimble";
  inputs."httpx-v0_1_8".ref = "flake-pinning";
  inputs."httpx-v0_1_8".dir = "nimpkgs/h/httpx/v0_1_8";

    inputs."httpx-v0_2_0".type = "github";
  inputs."httpx-v0_2_0".owner = "riinr";
  inputs."httpx-v0_2_0".repo = "flake-nimble";
  inputs."httpx-v0_2_0".ref = "flake-pinning";
  inputs."httpx-v0_2_0".dir = "nimpkgs/h/httpx/v0_2_0";

    inputs."httpx-v0_2_2".type = "github";
  inputs."httpx-v0_2_2".owner = "riinr";
  inputs."httpx-v0_2_2".repo = "flake-nimble";
  inputs."httpx-v0_2_2".ref = "flake-pinning";
  inputs."httpx-v0_2_2".dir = "nimpkgs/h/httpx/v0_2_2";

    inputs."httpx-v0_2_4".type = "github";
  inputs."httpx-v0_2_4".owner = "riinr";
  inputs."httpx-v0_2_4".repo = "flake-nimble";
  inputs."httpx-v0_2_4".ref = "flake-pinning";
  inputs."httpx-v0_2_4".dir = "nimpkgs/h/httpx/v0_2_4";

    inputs."httpx-v0_2_6".type = "github";
  inputs."httpx-v0_2_6".owner = "riinr";
  inputs."httpx-v0_2_6".repo = "flake-nimble";
  inputs."httpx-v0_2_6".ref = "flake-pinning";
  inputs."httpx-v0_2_6".dir = "nimpkgs/h/httpx/v0_2_6";

    inputs."httpx-v0_2_8".type = "github";
  inputs."httpx-v0_2_8".owner = "riinr";
  inputs."httpx-v0_2_8".repo = "flake-nimble";
  inputs."httpx-v0_2_8".ref = "flake-pinning";
  inputs."httpx-v0_2_8".dir = "nimpkgs/h/httpx/v0_2_8";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}