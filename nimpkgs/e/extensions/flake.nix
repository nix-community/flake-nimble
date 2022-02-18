{
  description = ''A library that will add useful tools to Nim's arsenal.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."extensions-master".type = "github";
  inputs."extensions-master".owner = "riinr";
  inputs."extensions-master".repo = "flake-nimble";
  inputs."extensions-master".ref = "flake-pinning";
  inputs."extensions-master".dir = "nimpkgs/e/extensions/master";

    inputs."extensions-0_2_0".type = "github";
  inputs."extensions-0_2_0".owner = "riinr";
  inputs."extensions-0_2_0".repo = "flake-nimble";
  inputs."extensions-0_2_0".ref = "flake-pinning";
  inputs."extensions-0_2_0".dir = "nimpkgs/e/extensions/0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}