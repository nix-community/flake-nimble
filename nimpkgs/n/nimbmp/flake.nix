{
  description = ''BMP encoder and decoder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimBMP-master".type = "github";
  inputs."nimBMP-master".owner = "riinr";
  inputs."nimBMP-master".repo = "flake-nimble";
  inputs."nimBMP-master".ref = "flake-pinning";
  inputs."nimBMP-master".dir = "nimpkgs/n/nimBMP/master";

    inputs."nimBMP-v0_1_6".type = "github";
  inputs."nimBMP-v0_1_6".owner = "riinr";
  inputs."nimBMP-v0_1_6".repo = "flake-nimble";
  inputs."nimBMP-v0_1_6".ref = "flake-pinning";
  inputs."nimBMP-v0_1_6".dir = "nimpkgs/n/nimBMP/v0_1_6";

    inputs."nimBMP-v0_1_7".type = "github";
  inputs."nimBMP-v0_1_7".owner = "riinr";
  inputs."nimBMP-v0_1_7".repo = "flake-nimble";
  inputs."nimBMP-v0_1_7".ref = "flake-pinning";
  inputs."nimBMP-v0_1_7".dir = "nimpkgs/n/nimBMP/v0_1_7";

    inputs."nimBMP-v0_1_8".type = "github";
  inputs."nimBMP-v0_1_8".owner = "riinr";
  inputs."nimBMP-v0_1_8".repo = "flake-nimble";
  inputs."nimBMP-v0_1_8".ref = "flake-pinning";
  inputs."nimBMP-v0_1_8".dir = "nimpkgs/n/nimBMP/v0_1_8";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}