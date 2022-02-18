{
  description = ''wraps GTK+ or Windows' open file dialogs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."dialogs-master".type = "github";
  inputs."dialogs-master".owner = "riinr";
  inputs."dialogs-master".repo = "flake-nimble";
  inputs."dialogs-master".ref = "flake-pinning";
  inputs."dialogs-master".dir = "nimpkgs/d/dialogs/master";

    inputs."dialogs-v1_0_0".type = "github";
  inputs."dialogs-v1_0_0".owner = "riinr";
  inputs."dialogs-v1_0_0".repo = "flake-nimble";
  inputs."dialogs-v1_0_0".ref = "flake-pinning";
  inputs."dialogs-v1_0_0".dir = "nimpkgs/d/dialogs/v1_0_0";

    inputs."dialogs-v1_1_0".type = "github";
  inputs."dialogs-v1_1_0".owner = "riinr";
  inputs."dialogs-v1_1_0".repo = "flake-nimble";
  inputs."dialogs-v1_1_0".ref = "flake-pinning";
  inputs."dialogs-v1_1_0".dir = "nimpkgs/d/dialogs/v1_1_0";

    inputs."dialogs-v1_1_1".type = "github";
  inputs."dialogs-v1_1_1".owner = "riinr";
  inputs."dialogs-v1_1_1".repo = "flake-nimble";
  inputs."dialogs-v1_1_1".ref = "flake-pinning";
  inputs."dialogs-v1_1_1".dir = "nimpkgs/d/dialogs/v1_1_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}