{
  description = ''A tiny static file web server.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimhttpd-master".type = "github";
  inputs."nimhttpd-master".owner = "riinr";
  inputs."nimhttpd-master".repo = "flake-nimble";
  inputs."nimhttpd-master".ref = "flake-pinning";
  inputs."nimhttpd-master".dir = "nimpkgs/n/nimhttpd/master";

    inputs."nimhttpd-v1_0_0".type = "github";
  inputs."nimhttpd-v1_0_0".owner = "riinr";
  inputs."nimhttpd-v1_0_0".repo = "flake-nimble";
  inputs."nimhttpd-v1_0_0".ref = "flake-pinning";
  inputs."nimhttpd-v1_0_0".dir = "nimpkgs/n/nimhttpd/v1_0_0";

    inputs."nimhttpd-v1_0_1".type = "github";
  inputs."nimhttpd-v1_0_1".owner = "riinr";
  inputs."nimhttpd-v1_0_1".repo = "flake-nimble";
  inputs."nimhttpd-v1_0_1".ref = "flake-pinning";
  inputs."nimhttpd-v1_0_1".dir = "nimpkgs/n/nimhttpd/v1_0_1";

    inputs."nimhttpd-v1_0_2".type = "github";
  inputs."nimhttpd-v1_0_2".owner = "riinr";
  inputs."nimhttpd-v1_0_2".repo = "flake-nimble";
  inputs."nimhttpd-v1_0_2".ref = "flake-pinning";
  inputs."nimhttpd-v1_0_2".dir = "nimpkgs/n/nimhttpd/v1_0_2";

    inputs."nimhttpd-v1_0_3".type = "github";
  inputs."nimhttpd-v1_0_3".owner = "riinr";
  inputs."nimhttpd-v1_0_3".repo = "flake-nimble";
  inputs."nimhttpd-v1_0_3".ref = "flake-pinning";
  inputs."nimhttpd-v1_0_3".dir = "nimpkgs/n/nimhttpd/v1_0_3";

    inputs."nimhttpd-v1_0_4".type = "github";
  inputs."nimhttpd-v1_0_4".owner = "riinr";
  inputs."nimhttpd-v1_0_4".repo = "flake-nimble";
  inputs."nimhttpd-v1_0_4".ref = "flake-pinning";
  inputs."nimhttpd-v1_0_4".dir = "nimpkgs/n/nimhttpd/v1_0_4";

    inputs."nimhttpd-v1_0_5".type = "github";
  inputs."nimhttpd-v1_0_5".owner = "riinr";
  inputs."nimhttpd-v1_0_5".repo = "flake-nimble";
  inputs."nimhttpd-v1_0_5".ref = "flake-pinning";
  inputs."nimhttpd-v1_0_5".dir = "nimpkgs/n/nimhttpd/v1_0_5";

    inputs."nimhttpd-v1_0_6".type = "github";
  inputs."nimhttpd-v1_0_6".owner = "riinr";
  inputs."nimhttpd-v1_0_6".repo = "flake-nimble";
  inputs."nimhttpd-v1_0_6".ref = "flake-pinning";
  inputs."nimhttpd-v1_0_6".dir = "nimpkgs/n/nimhttpd/v1_0_6";

    inputs."nimhttpd-v1_0_7".type = "github";
  inputs."nimhttpd-v1_0_7".owner = "riinr";
  inputs."nimhttpd-v1_0_7".repo = "flake-nimble";
  inputs."nimhttpd-v1_0_7".ref = "flake-pinning";
  inputs."nimhttpd-v1_0_7".dir = "nimpkgs/n/nimhttpd/v1_0_7";

    inputs."nimhttpd-v1_0_8".type = "github";
  inputs."nimhttpd-v1_0_8".owner = "riinr";
  inputs."nimhttpd-v1_0_8".repo = "flake-nimble";
  inputs."nimhttpd-v1_0_8".ref = "flake-pinning";
  inputs."nimhttpd-v1_0_8".dir = "nimpkgs/n/nimhttpd/v1_0_8";

    inputs."nimhttpd-v1_1_0".type = "github";
  inputs."nimhttpd-v1_1_0".owner = "riinr";
  inputs."nimhttpd-v1_1_0".repo = "flake-nimble";
  inputs."nimhttpd-v1_1_0".ref = "flake-pinning";
  inputs."nimhttpd-v1_1_0".dir = "nimpkgs/n/nimhttpd/v1_1_0";

    inputs."nimhttpd-v1_1_1".type = "github";
  inputs."nimhttpd-v1_1_1".owner = "riinr";
  inputs."nimhttpd-v1_1_1".repo = "flake-nimble";
  inputs."nimhttpd-v1_1_1".ref = "flake-pinning";
  inputs."nimhttpd-v1_1_1".dir = "nimpkgs/n/nimhttpd/v1_1_1";

    inputs."nimhttpd-v1_2_0".type = "github";
  inputs."nimhttpd-v1_2_0".owner = "riinr";
  inputs."nimhttpd-v1_2_0".repo = "flake-nimble";
  inputs."nimhttpd-v1_2_0".ref = "flake-pinning";
  inputs."nimhttpd-v1_2_0".dir = "nimpkgs/n/nimhttpd/v1_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}