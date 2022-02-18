{
  description = ''Nim wrapper for libbacktrace'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."libbacktrace-master".type = "github";
  inputs."libbacktrace-master".owner = "riinr";
  inputs."libbacktrace-master".repo = "flake-nimble";
  inputs."libbacktrace-master".ref = "flake-pinning";
  inputs."libbacktrace-master".dir = "nimpkgs/l/libbacktrace/master";

    inputs."libbacktrace-v0_0_2".type = "github";
  inputs."libbacktrace-v0_0_2".owner = "riinr";
  inputs."libbacktrace-v0_0_2".repo = "flake-nimble";
  inputs."libbacktrace-v0_0_2".ref = "flake-pinning";
  inputs."libbacktrace-v0_0_2".dir = "nimpkgs/l/libbacktrace/v0_0_2";

    inputs."libbacktrace-v0_0_3".type = "github";
  inputs."libbacktrace-v0_0_3".owner = "riinr";
  inputs."libbacktrace-v0_0_3".repo = "flake-nimble";
  inputs."libbacktrace-v0_0_3".ref = "flake-pinning";
  inputs."libbacktrace-v0_0_3".dir = "nimpkgs/l/libbacktrace/v0_0_3";

    inputs."libbacktrace-v0_0_4".type = "github";
  inputs."libbacktrace-v0_0_4".owner = "riinr";
  inputs."libbacktrace-v0_0_4".repo = "flake-nimble";
  inputs."libbacktrace-v0_0_4".ref = "flake-pinning";
  inputs."libbacktrace-v0_0_4".dir = "nimpkgs/l/libbacktrace/v0_0_4";

    inputs."libbacktrace-v0_0_5".type = "github";
  inputs."libbacktrace-v0_0_5".owner = "riinr";
  inputs."libbacktrace-v0_0_5".repo = "flake-nimble";
  inputs."libbacktrace-v0_0_5".ref = "flake-pinning";
  inputs."libbacktrace-v0_0_5".dir = "nimpkgs/l/libbacktrace/v0_0_5";

    inputs."libbacktrace-v0_0_6".type = "github";
  inputs."libbacktrace-v0_0_6".owner = "riinr";
  inputs."libbacktrace-v0_0_6".repo = "flake-nimble";
  inputs."libbacktrace-v0_0_6".ref = "flake-pinning";
  inputs."libbacktrace-v0_0_6".dir = "nimpkgs/l/libbacktrace/v0_0_6";

    inputs."libbacktrace-v0_0_7".type = "github";
  inputs."libbacktrace-v0_0_7".owner = "riinr";
  inputs."libbacktrace-v0_0_7".repo = "flake-nimble";
  inputs."libbacktrace-v0_0_7".ref = "flake-pinning";
  inputs."libbacktrace-v0_0_7".dir = "nimpkgs/l/libbacktrace/v0_0_7";

    inputs."libbacktrace-v0_0_8".type = "github";
  inputs."libbacktrace-v0_0_8".owner = "riinr";
  inputs."libbacktrace-v0_0_8".repo = "flake-nimble";
  inputs."libbacktrace-v0_0_8".ref = "flake-pinning";
  inputs."libbacktrace-v0_0_8".dir = "nimpkgs/l/libbacktrace/v0_0_8";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}