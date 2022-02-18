{
  description = ''Wrapper for SDL 2.x'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."sdl2-master".type = "github";
  inputs."sdl2-master".owner = "riinr";
  inputs."sdl2-master".repo = "flake-nimble";
  inputs."sdl2-master".ref = "flake-pinning";
  inputs."sdl2-master".dir = "nimpkgs/s/sdl2/master";

    inputs."sdl2-v2_0".type = "github";
  inputs."sdl2-v2_0".owner = "riinr";
  inputs."sdl2-v2_0".repo = "flake-nimble";
  inputs."sdl2-v2_0".ref = "flake-pinning";
  inputs."sdl2-v2_0".dir = "nimpkgs/s/sdl2/v2_0";

    inputs."sdl2-v2_0_1".type = "github";
  inputs."sdl2-v2_0_1".owner = "riinr";
  inputs."sdl2-v2_0_1".repo = "flake-nimble";
  inputs."sdl2-v2_0_1".ref = "flake-pinning";
  inputs."sdl2-v2_0_1".dir = "nimpkgs/s/sdl2/v2_0_1";

    inputs."sdl2-v2_0_2".type = "github";
  inputs."sdl2-v2_0_2".owner = "riinr";
  inputs."sdl2-v2_0_2".repo = "flake-nimble";
  inputs."sdl2-v2_0_2".ref = "flake-pinning";
  inputs."sdl2-v2_0_2".dir = "nimpkgs/s/sdl2/v2_0_2";

    inputs."sdl2-v2_0_3".type = "github";
  inputs."sdl2-v2_0_3".owner = "riinr";
  inputs."sdl2-v2_0_3".repo = "flake-nimble";
  inputs."sdl2-v2_0_3".ref = "flake-pinning";
  inputs."sdl2-v2_0_3".dir = "nimpkgs/s/sdl2/v2_0_3";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}