{
  description = ''Small program to grab notifications from freedesktop and output them according to a format'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."notificatcher-master".type = "github";
  inputs."notificatcher-master".owner = "riinr";
  inputs."notificatcher-master".repo = "flake-nimble";
  inputs."notificatcher-master".ref = "flake-pinning";
  inputs."notificatcher-master".dir = "nimpkgs/n/notificatcher/master";

    inputs."notificatcher-v0_2_0".type = "github";
  inputs."notificatcher-v0_2_0".owner = "riinr";
  inputs."notificatcher-v0_2_0".repo = "flake-nimble";
  inputs."notificatcher-v0_2_0".ref = "flake-pinning";
  inputs."notificatcher-v0_2_0".dir = "nimpkgs/n/notificatcher/v0_2_0";

    inputs."notificatcher-v0_3_0".type = "github";
  inputs."notificatcher-v0_3_0".owner = "riinr";
  inputs."notificatcher-v0_3_0".repo = "flake-nimble";
  inputs."notificatcher-v0_3_0".ref = "flake-pinning";
  inputs."notificatcher-v0_3_0".dir = "nimpkgs/n/notificatcher/v0_3_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}