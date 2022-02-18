{
  description = ''A dynamic website generator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."gerbil-master".type = "github";
  inputs."gerbil-master".owner = "riinr";
  inputs."gerbil-master".repo = "flake-nimble";
  inputs."gerbil-master".ref = "flake-pinning";
  inputs."gerbil-master".dir = "nimpkgs/g/gerbil/master";

    inputs."gerbil-v0_1_0".type = "github";
  inputs."gerbil-v0_1_0".owner = "riinr";
  inputs."gerbil-v0_1_0".repo = "flake-nimble";
  inputs."gerbil-v0_1_0".ref = "flake-pinning";
  inputs."gerbil-v0_1_0".dir = "nimpkgs/g/gerbil/v0_1_0";

    inputs."gerbil-v0_1_1".type = "github";
  inputs."gerbil-v0_1_1".owner = "riinr";
  inputs."gerbil-v0_1_1".repo = "flake-nimble";
  inputs."gerbil-v0_1_1".ref = "flake-pinning";
  inputs."gerbil-v0_1_1".dir = "nimpkgs/g/gerbil/v0_1_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}