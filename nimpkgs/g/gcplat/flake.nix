{
  description = ''Google Cloud Platform (GCP) APIs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."gcplat-master".type = "github";
  inputs."gcplat-master".owner = "riinr";
  inputs."gcplat-master".repo = "flake-nimble";
  inputs."gcplat-master".ref = "flake-pinning";
  inputs."gcplat-master".dir = "nimpkgs/g/gcplat/master";

    inputs."gcplat-0_0_1".type = "github";
  inputs."gcplat-0_0_1".owner = "riinr";
  inputs."gcplat-0_0_1".repo = "flake-nimble";
  inputs."gcplat-0_0_1".ref = "flake-pinning";
  inputs."gcplat-0_0_1".dir = "nimpkgs/g/gcplat/0_0_1";

    inputs."gcplat-2_0_0".type = "github";
  inputs."gcplat-2_0_0".owner = "riinr";
  inputs."gcplat-2_0_0".repo = "flake-nimble";
  inputs."gcplat-2_0_0".ref = "flake-pinning";
  inputs."gcplat-2_0_0".dir = "nimpkgs/g/gcplat/2_0_0";

    inputs."gcplat-2_0_1".type = "github";
  inputs."gcplat-2_0_1".owner = "riinr";
  inputs."gcplat-2_0_1".repo = "flake-nimble";
  inputs."gcplat-2_0_1".ref = "flake-pinning";
  inputs."gcplat-2_0_1".dir = "nimpkgs/g/gcplat/2_0_1";

    inputs."gcplat-2_0_2".type = "github";
  inputs."gcplat-2_0_2".owner = "riinr";
  inputs."gcplat-2_0_2".repo = "flake-nimble";
  inputs."gcplat-2_0_2".ref = "flake-pinning";
  inputs."gcplat-2_0_2".dir = "nimpkgs/g/gcplat/2_0_2";

    inputs."gcplat-2_0_3".type = "github";
  inputs."gcplat-2_0_3".owner = "riinr";
  inputs."gcplat-2_0_3".repo = "flake-nimble";
  inputs."gcplat-2_0_3".ref = "flake-pinning";
  inputs."gcplat-2_0_3".dir = "nimpkgs/g/gcplat/2_0_3";

    inputs."gcplat-2_0_4".type = "github";
  inputs."gcplat-2_0_4".owner = "riinr";
  inputs."gcplat-2_0_4".repo = "flake-nimble";
  inputs."gcplat-2_0_4".ref = "flake-pinning";
  inputs."gcplat-2_0_4".dir = "nimpkgs/g/gcplat/2_0_4";

    inputs."gcplat-2_0_5".type = "github";
  inputs."gcplat-2_0_5".owner = "riinr";
  inputs."gcplat-2_0_5".repo = "flake-nimble";
  inputs."gcplat-2_0_5".ref = "flake-pinning";
  inputs."gcplat-2_0_5".dir = "nimpkgs/g/gcplat/2_0_5";

    inputs."gcplat-3_0_0".type = "github";
  inputs."gcplat-3_0_0".owner = "riinr";
  inputs."gcplat-3_0_0".repo = "flake-nimble";
  inputs."gcplat-3_0_0".ref = "flake-pinning";
  inputs."gcplat-3_0_0".dir = "nimpkgs/g/gcplat/3_0_0";

    inputs."gcplat-3_0_1".type = "github";
  inputs."gcplat-3_0_1".owner = "riinr";
  inputs."gcplat-3_0_1".repo = "flake-nimble";
  inputs."gcplat-3_0_1".ref = "flake-pinning";
  inputs."gcplat-3_0_1".dir = "nimpkgs/g/gcplat/3_0_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}