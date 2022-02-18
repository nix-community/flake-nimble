{
  description = ''A wrapper of the ORX 2.5D game engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."norx-master".type = "github";
  inputs."norx-master".owner = "riinr";
  inputs."norx-master".repo = "flake-nimble";
  inputs."norx-master".ref = "flake-pinning";
  inputs."norx-master".dir = "nimpkgs/n/norx/master";

    inputs."norx-0_4_2".type = "github";
  inputs."norx-0_4_2".owner = "riinr";
  inputs."norx-0_4_2".repo = "flake-nimble";
  inputs."norx-0_4_2".ref = "flake-pinning";
  inputs."norx-0_4_2".dir = "nimpkgs/n/norx/0_4_2";

    inputs."norx-0_4_3".type = "github";
  inputs."norx-0_4_3".owner = "riinr";
  inputs."norx-0_4_3".repo = "flake-nimble";
  inputs."norx-0_4_3".ref = "flake-pinning";
  inputs."norx-0_4_3".dir = "nimpkgs/n/norx/0_4_3";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}