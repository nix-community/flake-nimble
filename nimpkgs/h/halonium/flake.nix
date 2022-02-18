{
  description = ''A browser automation library written in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."halonium-master".type = "github";
  inputs."halonium-master".owner = "riinr";
  inputs."halonium-master".repo = "flake-nimble";
  inputs."halonium-master".ref = "flake-pinning";
  inputs."halonium-master".dir = "nimpkgs/h/halonium/master";

    inputs."halonium-0_2_3".type = "github";
  inputs."halonium-0_2_3".owner = "riinr";
  inputs."halonium-0_2_3".repo = "flake-nimble";
  inputs."halonium-0_2_3".ref = "flake-pinning";
  inputs."halonium-0_2_3".dir = "nimpkgs/h/halonium/0_2_3";

    inputs."halonium-0_2_4".type = "github";
  inputs."halonium-0_2_4".owner = "riinr";
  inputs."halonium-0_2_4".repo = "flake-nimble";
  inputs."halonium-0_2_4".ref = "flake-pinning";
  inputs."halonium-0_2_4".dir = "nimpkgs/h/halonium/0_2_4";

    inputs."halonium-0_2_5".type = "github";
  inputs."halonium-0_2_5".owner = "riinr";
  inputs."halonium-0_2_5".repo = "flake-nimble";
  inputs."halonium-0_2_5".ref = "flake-pinning";
  inputs."halonium-0_2_5".dir = "nimpkgs/h/halonium/0_2_5";

    inputs."halonium-0_2_6".type = "github";
  inputs."halonium-0_2_6".owner = "riinr";
  inputs."halonium-0_2_6".repo = "flake-nimble";
  inputs."halonium-0_2_6".ref = "flake-pinning";
  inputs."halonium-0_2_6".dir = "nimpkgs/h/halonium/0_2_6";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}