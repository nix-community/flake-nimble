{
  description = ''An easy way to build homebrew files for the Nintendo Switch'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."switch_build-master".type = "github";
  inputs."switch_build-master".owner = "riinr";
  inputs."switch_build-master".repo = "flake-nimble";
  inputs."switch_build-master".ref = "flake-pinning";
  inputs."switch_build-master".dir = "nimpkgs/s/switch_build/master";

    inputs."switch_build-0_1_2".type = "github";
  inputs."switch_build-0_1_2".owner = "riinr";
  inputs."switch_build-0_1_2".repo = "flake-nimble";
  inputs."switch_build-0_1_2".ref = "flake-pinning";
  inputs."switch_build-0_1_2".dir = "nimpkgs/s/switch_build/0_1_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}