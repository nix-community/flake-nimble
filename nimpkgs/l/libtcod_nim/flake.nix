{
  description = ''Wrapper of the libtcod library for the Nim language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."libtcod_nim-master".type = "github";
  inputs."libtcod_nim-master".owner = "riinr";
  inputs."libtcod_nim-master".repo = "flake-nimble";
  inputs."libtcod_nim-master".ref = "flake-pinning";
  inputs."libtcod_nim-master".dir = "nimpkgs/l/libtcod_nim/master";

    inputs."libtcod_nim-v0_9".type = "github";
  inputs."libtcod_nim-v0_9".owner = "riinr";
  inputs."libtcod_nim-v0_9".repo = "flake-nimble";
  inputs."libtcod_nim-v0_9".ref = "flake-pinning";
  inputs."libtcod_nim-v0_9".dir = "nimpkgs/l/libtcod_nim/v0_9";

    inputs."libtcod_nim-v0_95".type = "github";
  inputs."libtcod_nim-v0_95".owner = "riinr";
  inputs."libtcod_nim-v0_95".repo = "flake-nimble";
  inputs."libtcod_nim-v0_95".ref = "flake-pinning";
  inputs."libtcod_nim-v0_95".dir = "nimpkgs/l/libtcod_nim/v0_95";

    inputs."libtcod_nim-v0_96".type = "github";
  inputs."libtcod_nim-v0_96".owner = "riinr";
  inputs."libtcod_nim-v0_96".repo = "flake-nimble";
  inputs."libtcod_nim-v0_96".ref = "flake-pinning";
  inputs."libtcod_nim-v0_96".dir = "nimpkgs/l/libtcod_nim/v0_96";

    inputs."libtcod_nim-v0_97".type = "github";
  inputs."libtcod_nim-v0_97".owner = "riinr";
  inputs."libtcod_nim-v0_97".repo = "flake-nimble";
  inputs."libtcod_nim-v0_97".ref = "flake-pinning";
  inputs."libtcod_nim-v0_97".dir = "nimpkgs/l/libtcod_nim/v0_97";

    inputs."libtcod_nim-v0_98".type = "github";
  inputs."libtcod_nim-v0_98".owner = "riinr";
  inputs."libtcod_nim-v0_98".repo = "flake-nimble";
  inputs."libtcod_nim-v0_98".ref = "flake-pinning";
  inputs."libtcod_nim-v0_98".dir = "nimpkgs/l/libtcod_nim/v0_98";

    inputs."libtcod_nim-v0_98_1".type = "github";
  inputs."libtcod_nim-v0_98_1".owner = "riinr";
  inputs."libtcod_nim-v0_98_1".repo = "flake-nimble";
  inputs."libtcod_nim-v0_98_1".ref = "flake-pinning";
  inputs."libtcod_nim-v0_98_1".dir = "nimpkgs/l/libtcod_nim/v0_98_1";

    inputs."libtcod_nim-v0_99".type = "github";
  inputs."libtcod_nim-v0_99".owner = "riinr";
  inputs."libtcod_nim-v0_99".repo = "flake-nimble";
  inputs."libtcod_nim-v0_99".ref = "flake-pinning";
  inputs."libtcod_nim-v0_99".dir = "nimpkgs/l/libtcod_nim/v0_99";

    inputs."libtcod_nim-v1_112_0".type = "github";
  inputs."libtcod_nim-v1_112_0".owner = "riinr";
  inputs."libtcod_nim-v1_112_0".repo = "flake-nimble";
  inputs."libtcod_nim-v1_112_0".ref = "flake-pinning";
  inputs."libtcod_nim-v1_112_0".dir = "nimpkgs/l/libtcod_nim/v1_112_0";

    inputs."libtcod_nim-v1_112_1".type = "github";
  inputs."libtcod_nim-v1_112_1".owner = "riinr";
  inputs."libtcod_nim-v1_112_1".repo = "flake-nimble";
  inputs."libtcod_nim-v1_112_1".ref = "flake-pinning";
  inputs."libtcod_nim-v1_112_1".dir = "nimpkgs/l/libtcod_nim/v1_112_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}