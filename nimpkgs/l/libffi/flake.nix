{
  description = ''libffi wrapper for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."libffi-master".type = "github";
  inputs."libffi-master".owner = "riinr";
  inputs."libffi-master".repo = "flake-nimble";
  inputs."libffi-master".ref = "flake-pinning";
  inputs."libffi-master".dir = "nimpkgs/l/libffi/master";

    inputs."libffi-1_0_3".type = "github";
  inputs."libffi-1_0_3".owner = "riinr";
  inputs."libffi-1_0_3".repo = "flake-nimble";
  inputs."libffi-1_0_3".ref = "flake-pinning";
  inputs."libffi-1_0_3".dir = "nimpkgs/l/libffi/1_0_3";

    inputs."libffi-1_0_4".type = "github";
  inputs."libffi-1_0_4".owner = "riinr";
  inputs."libffi-1_0_4".repo = "flake-nimble";
  inputs."libffi-1_0_4".ref = "flake-pinning";
  inputs."libffi-1_0_4".dir = "nimpkgs/l/libffi/1_0_4";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}