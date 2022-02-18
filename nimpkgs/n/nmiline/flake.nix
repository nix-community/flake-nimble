{
  description = ''Plotting tool using NiGui'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nmiline-master".type = "github";
  inputs."nmiline-master".owner = "riinr";
  inputs."nmiline-master".repo = "flake-nimble";
  inputs."nmiline-master".ref = "flake-pinning";
  inputs."nmiline-master".dir = "nimpkgs/n/nmiline/master";

    inputs."nmiline-v1_0".type = "github";
  inputs."nmiline-v1_0".owner = "riinr";
  inputs."nmiline-v1_0".repo = "flake-nimble";
  inputs."nmiline-v1_0".ref = "flake-pinning";
  inputs."nmiline-v1_0".dir = "nimpkgs/n/nmiline/v1_0";

    inputs."nmiline-v1_0_1".type = "github";
  inputs."nmiline-v1_0_1".owner = "riinr";
  inputs."nmiline-v1_0_1".repo = "flake-nimble";
  inputs."nmiline-v1_0_1".ref = "flake-pinning";
  inputs."nmiline-v1_0_1".dir = "nimpkgs/n/nmiline/v1_0_1";

    inputs."nmiline-v1_1".type = "github";
  inputs."nmiline-v1_1".owner = "riinr";
  inputs."nmiline-v1_1".repo = "flake-nimble";
  inputs."nmiline-v1_1".ref = "flake-pinning";
  inputs."nmiline-v1_1".dir = "nimpkgs/n/nmiline/v1_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}