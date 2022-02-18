{
  description = ''Bindings for zstd'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."zstd-develop".type = "github";
  inputs."zstd-develop".owner = "riinr";
  inputs."zstd-develop".repo = "flake-nimble";
  inputs."zstd-develop".ref = "flake-pinning";
  inputs."zstd-develop".dir = "nimpkgs/z/zstd/develop";

    inputs."zstd-master".type = "github";
  inputs."zstd-master".owner = "riinr";
  inputs."zstd-master".repo = "flake-nimble";
  inputs."zstd-master".ref = "flake-pinning";
  inputs."zstd-master".dir = "nimpkgs/z/zstd/master";

    inputs."zstd-v0_2".type = "github";
  inputs."zstd-v0_2".owner = "riinr";
  inputs."zstd-v0_2".repo = "flake-nimble";
  inputs."zstd-v0_2".ref = "flake-pinning";
  inputs."zstd-v0_2".dir = "nimpkgs/z/zstd/v0_2";

    inputs."zstd-v0_3".type = "github";
  inputs."zstd-v0_3".owner = "riinr";
  inputs."zstd-v0_3".repo = "flake-nimble";
  inputs."zstd-v0_3".ref = "flake-pinning";
  inputs."zstd-v0_3".dir = "nimpkgs/z/zstd/v0_3";

    inputs."zstd-v0_4".type = "github";
  inputs."zstd-v0_4".owner = "riinr";
  inputs."zstd-v0_4".repo = "flake-nimble";
  inputs."zstd-v0_4".ref = "flake-pinning";
  inputs."zstd-v0_4".dir = "nimpkgs/z/zstd/v0_4";

    inputs."zstd-v0_5".type = "github";
  inputs."zstd-v0_5".owner = "riinr";
  inputs."zstd-v0_5".repo = "flake-nimble";
  inputs."zstd-v0_5".ref = "flake-pinning";
  inputs."zstd-v0_5".dir = "nimpkgs/z/zstd/v0_5";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}