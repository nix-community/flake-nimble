{
  description = ''A wrapper for stb_image and stb_image_write.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."stb_image-master".type = "github";
  inputs."stb_image-master".owner = "riinr";
  inputs."stb_image-master".repo = "flake-nimble";
  inputs."stb_image-master".ref = "flake-pinning";
  inputs."stb_image-master".dir = "nimpkgs/s/stb_image/master";

    inputs."stb_image-1_1".type = "github";
  inputs."stb_image-1_1".owner = "riinr";
  inputs."stb_image-1_1".repo = "flake-nimble";
  inputs."stb_image-1_1".ref = "flake-pinning";
  inputs."stb_image-1_1".dir = "nimpkgs/s/stb_image/1_1";

    inputs."stb_image-1_2".type = "github";
  inputs."stb_image-1_2".owner = "riinr";
  inputs."stb_image-1_2".repo = "flake-nimble";
  inputs."stb_image-1_2".ref = "flake-pinning";
  inputs."stb_image-1_2".dir = "nimpkgs/s/stb_image/1_2";

    inputs."stb_image-1_3".type = "github";
  inputs."stb_image-1_3".owner = "riinr";
  inputs."stb_image-1_3".repo = "flake-nimble";
  inputs."stb_image-1_3".ref = "flake-pinning";
  inputs."stb_image-1_3".dir = "nimpkgs/s/stb_image/1_3";

    inputs."stb_image-1_4".type = "github";
  inputs."stb_image-1_4".owner = "riinr";
  inputs."stb_image-1_4".repo = "flake-nimble";
  inputs."stb_image-1_4".ref = "flake-pinning";
  inputs."stb_image-1_4".dir = "nimpkgs/s/stb_image/1_4";

    inputs."stb_image-1_5".type = "github";
  inputs."stb_image-1_5".owner = "riinr";
  inputs."stb_image-1_5".repo = "flake-nimble";
  inputs."stb_image-1_5".ref = "flake-pinning";
  inputs."stb_image-1_5".dir = "nimpkgs/s/stb_image/1_5";

    inputs."stb_image-1_6".type = "github";
  inputs."stb_image-1_6".owner = "riinr";
  inputs."stb_image-1_6".repo = "flake-nimble";
  inputs."stb_image-1_6".ref = "flake-pinning";
  inputs."stb_image-1_6".dir = "nimpkgs/s/stb_image/1_6";

    inputs."stb_image-2_0".type = "github";
  inputs."stb_image-2_0".owner = "riinr";
  inputs."stb_image-2_0".repo = "flake-nimble";
  inputs."stb_image-2_0".ref = "flake-pinning";
  inputs."stb_image-2_0".dir = "nimpkgs/s/stb_image/2_0";

    inputs."stb_image-2_1".type = "github";
  inputs."stb_image-2_1".owner = "riinr";
  inputs."stb_image-2_1".repo = "flake-nimble";
  inputs."stb_image-2_1".ref = "flake-pinning";
  inputs."stb_image-2_1".dir = "nimpkgs/s/stb_image/2_1";

    inputs."stb_image-2_2".type = "github";
  inputs."stb_image-2_2".owner = "riinr";
  inputs."stb_image-2_2".repo = "flake-nimble";
  inputs."stb_image-2_2".ref = "flake-pinning";
  inputs."stb_image-2_2".dir = "nimpkgs/s/stb_image/2_2";

    inputs."stb_image-2_3".type = "github";
  inputs."stb_image-2_3".owner = "riinr";
  inputs."stb_image-2_3".repo = "flake-nimble";
  inputs."stb_image-2_3".ref = "flake-pinning";
  inputs."stb_image-2_3".dir = "nimpkgs/s/stb_image/2_3";

    inputs."stb_image-2_4".type = "github";
  inputs."stb_image-2_4".owner = "riinr";
  inputs."stb_image-2_4".repo = "flake-nimble";
  inputs."stb_image-2_4".ref = "flake-pinning";
  inputs."stb_image-2_4".dir = "nimpkgs/s/stb_image/2_4";

    inputs."stb_image-2_5".type = "github";
  inputs."stb_image-2_5".owner = "riinr";
  inputs."stb_image-2_5".repo = "flake-nimble";
  inputs."stb_image-2_5".ref = "flake-pinning";
  inputs."stb_image-2_5".dir = "nimpkgs/s/stb_image/2_5";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}