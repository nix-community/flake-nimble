{
  description = ''Password generation library in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."passgen-master".type = "github";
  inputs."passgen-master".owner = "riinr";
  inputs."passgen-master".repo = "flake-nimble";
  inputs."passgen-master".ref = "flake-pinning";
  inputs."passgen-master".dir = "nimpkgs/p/passgen/master";

    inputs."passgen-0_1_0".type = "github";
  inputs."passgen-0_1_0".owner = "riinr";
  inputs."passgen-0_1_0".repo = "flake-nimble";
  inputs."passgen-0_1_0".ref = "flake-pinning";
  inputs."passgen-0_1_0".dir = "nimpkgs/p/passgen/0_1_0";

    inputs."passgen-0_2_0".type = "github";
  inputs."passgen-0_2_0".owner = "riinr";
  inputs."passgen-0_2_0".repo = "flake-nimble";
  inputs."passgen-0_2_0".ref = "flake-pinning";
  inputs."passgen-0_2_0".dir = "nimpkgs/p/passgen/0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}