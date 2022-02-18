{
  description = ''LAPACK bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimlapack-master".type = "github";
  inputs."nimlapack-master".owner = "riinr";
  inputs."nimlapack-master".repo = "flake-nimble";
  inputs."nimlapack-master".ref = "flake-pinning";
  inputs."nimlapack-master".dir = "nimpkgs/n/nimlapack/master";

    inputs."nimlapack-0_1_1".type = "github";
  inputs."nimlapack-0_1_1".owner = "riinr";
  inputs."nimlapack-0_1_1".repo = "flake-nimble";
  inputs."nimlapack-0_1_1".ref = "flake-pinning";
  inputs."nimlapack-0_1_1".dir = "nimpkgs/n/nimlapack/0_1_1";

    inputs."nimlapack-0_2_0".type = "github";
  inputs."nimlapack-0_2_0".owner = "riinr";
  inputs."nimlapack-0_2_0".repo = "flake-nimble";
  inputs."nimlapack-0_2_0".ref = "flake-pinning";
  inputs."nimlapack-0_2_0".dir = "nimpkgs/n/nimlapack/0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}