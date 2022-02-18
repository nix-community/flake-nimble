{
  description = ''A package manager that delegates to package authors'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimp-master".type = "github";
  inputs."nimp-master".owner = "riinr";
  inputs."nimp-master".repo = "flake-nimble";
  inputs."nimp-master".ref = "flake-pinning";
  inputs."nimp-master".dir = "nimpkgs/n/nimp/master";

    inputs."nimp-v0_1_0".type = "github";
  inputs."nimp-v0_1_0".owner = "riinr";
  inputs."nimp-v0_1_0".repo = "flake-nimble";
  inputs."nimp-v0_1_0".ref = "flake-pinning";
  inputs."nimp-v0_1_0".dir = "nimpkgs/n/nimp/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}