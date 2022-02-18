{
  description = ''Disk-based sequences'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."spills-master".type = "github";
  inputs."spills-master".owner = "riinr";
  inputs."spills-master".repo = "flake-nimble";
  inputs."spills-master".ref = "flake-pinning";
  inputs."spills-master".dir = "nimpkgs/s/spills/master";

    inputs."spills-0_1_0".type = "github";
  inputs."spills-0_1_0".owner = "riinr";
  inputs."spills-0_1_0".repo = "flake-nimble";
  inputs."spills-0_1_0".ref = "flake-pinning";
  inputs."spills-0_1_0".dir = "nimpkgs/s/spills/0_1_0";

    inputs."spills-0_1_1".type = "github";
  inputs."spills-0_1_1".owner = "riinr";
  inputs."spills-0_1_1".repo = "flake-nimble";
  inputs."spills-0_1_1".ref = "flake-pinning";
  inputs."spills-0_1_1".dir = "nimpkgs/s/spills/0_1_1";

    inputs."spills-0_1_2".type = "github";
  inputs."spills-0_1_2".owner = "riinr";
  inputs."spills-0_1_2".repo = "flake-nimble";
  inputs."spills-0_1_2".ref = "flake-pinning";
  inputs."spills-0_1_2".dir = "nimpkgs/s/spills/0_1_2";

    inputs."spills-0_1_3".type = "github";
  inputs."spills-0_1_3".owner = "riinr";
  inputs."spills-0_1_3".repo = "flake-nimble";
  inputs."spills-0_1_3".ref = "flake-pinning";
  inputs."spills-0_1_3".dir = "nimpkgs/s/spills/0_1_3";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}