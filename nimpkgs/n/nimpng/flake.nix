{
  description = ''PNG(Portable Network Graphics) encoder and decoder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimPNG-master".type = "github";
  inputs."nimPNG-master".owner = "riinr";
  inputs."nimPNG-master".repo = "flake-nimble";
  inputs."nimPNG-master".ref = "flake-pinning";
  inputs."nimPNG-master".dir = "nimpkgs/n/nimPNG/master";

    inputs."nimPNG-0_2_7".type = "github";
  inputs."nimPNG-0_2_7".owner = "riinr";
  inputs."nimPNG-0_2_7".repo = "flake-nimble";
  inputs."nimPNG-0_2_7".ref = "flake-pinning";
  inputs."nimPNG-0_2_7".dir = "nimpkgs/n/nimPNG/0_2_7";

    inputs."nimPNG-0_3_0".type = "github";
  inputs."nimPNG-0_3_0".owner = "riinr";
  inputs."nimPNG-0_3_0".repo = "flake-nimble";
  inputs."nimPNG-0_3_0".ref = "flake-pinning";
  inputs."nimPNG-0_3_0".dir = "nimpkgs/n/nimPNG/0_3_0";

    inputs."nimPNG-v0_2_5".type = "github";
  inputs."nimPNG-v0_2_5".owner = "riinr";
  inputs."nimPNG-v0_2_5".repo = "flake-nimble";
  inputs."nimPNG-v0_2_5".ref = "flake-pinning";
  inputs."nimPNG-v0_2_5".dir = "nimpkgs/n/nimPNG/v0_2_5";

    inputs."nimPNG-v0_2_6".type = "github";
  inputs."nimPNG-v0_2_6".owner = "riinr";
  inputs."nimPNG-v0_2_6".repo = "flake-nimble";
  inputs."nimPNG-v0_2_6".ref = "flake-pinning";
  inputs."nimPNG-v0_2_6".dir = "nimpkgs/n/nimPNG/v0_2_6";

    inputs."nimPNG-v0_3_1".type = "github";
  inputs."nimPNG-v0_3_1".owner = "riinr";
  inputs."nimPNG-v0_3_1".repo = "flake-nimble";
  inputs."nimPNG-v0_3_1".ref = "flake-pinning";
  inputs."nimPNG-v0_3_1".dir = "nimpkgs/n/nimPNG/v0_3_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}