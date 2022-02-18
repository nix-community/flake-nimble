{
  description = ''Color Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."Palette-develop".type = "github";
  inputs."Palette-develop".owner = "riinr";
  inputs."Palette-develop".repo = "flake-nimble";
  inputs."Palette-develop".ref = "flake-pinning";
  inputs."Palette-develop".dir = "nimpkgs/p/Palette/develop";

    inputs."Palette-master".type = "github";
  inputs."Palette-master".owner = "riinr";
  inputs."Palette-master".repo = "flake-nimble";
  inputs."Palette-master".ref = "flake-pinning";
  inputs."Palette-master".dir = "nimpkgs/p/Palette/master";

    inputs."Palette-0_1_0".type = "github";
  inputs."Palette-0_1_0".owner = "riinr";
  inputs."Palette-0_1_0".repo = "flake-nimble";
  inputs."Palette-0_1_0".ref = "flake-pinning";
  inputs."Palette-0_1_0".dir = "nimpkgs/p/Palette/0_1_0";

    inputs."Palette-0_2_0".type = "github";
  inputs."Palette-0_2_0".owner = "riinr";
  inputs."Palette-0_2_0".repo = "flake-nimble";
  inputs."Palette-0_2_0".ref = "flake-pinning";
  inputs."Palette-0_2_0".dir = "nimpkgs/p/Palette/0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}