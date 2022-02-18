{
  description = ''Pub/Sub engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."suber-main".type = "github";
  inputs."suber-main".owner = "riinr";
  inputs."suber-main".repo = "flake-nimble";
  inputs."suber-main".ref = "flake-pinning";
  inputs."suber-main".dir = "nimpkgs/s/suber/main";

    inputs."suber-0_9_9".type = "github";
  inputs."suber-0_9_9".owner = "riinr";
  inputs."suber-0_9_9".repo = "flake-nimble";
  inputs."suber-0_9_9".ref = "flake-pinning";
  inputs."suber-0_9_9".dir = "nimpkgs/s/suber/0_9_9";

    inputs."suber-1_0_0".type = "github";
  inputs."suber-1_0_0".owner = "riinr";
  inputs."suber-1_0_0".repo = "flake-nimble";
  inputs."suber-1_0_0".ref = "flake-pinning";
  inputs."suber-1_0_0".dir = "nimpkgs/s/suber/1_0_0";

    inputs."suber-2_0_0".type = "github";
  inputs."suber-2_0_0".owner = "riinr";
  inputs."suber-2_0_0".repo = "flake-nimble";
  inputs."suber-2_0_0".ref = "flake-pinning";
  inputs."suber-2_0_0".dir = "nimpkgs/s/suber/2_0_0";

    inputs."suber-2_0_1".type = "github";
  inputs."suber-2_0_1".owner = "riinr";
  inputs."suber-2_0_1".repo = "flake-nimble";
  inputs."suber-2_0_1".ref = "flake-pinning";
  inputs."suber-2_0_1".dir = "nimpkgs/s/suber/2_0_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}