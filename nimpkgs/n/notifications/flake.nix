{
  description = ''Library for displaying notifications on the desktop'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."notifications-master".type = "github";
  inputs."notifications-master".owner = "riinr";
  inputs."notifications-master".repo = "flake-nimble";
  inputs."notifications-master".ref = "flake-pinning";
  inputs."notifications-master".dir = "nimpkgs/n/notifications/master";

    inputs."notifications-v0_1_0".type = "github";
  inputs."notifications-v0_1_0".owner = "riinr";
  inputs."notifications-v0_1_0".repo = "flake-nimble";
  inputs."notifications-v0_1_0".ref = "flake-pinning";
  inputs."notifications-v0_1_0".dir = "nimpkgs/n/notifications/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}