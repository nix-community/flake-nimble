{
  description = ''Duplicate files finder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."ndf-master".type = "github";
  inputs."ndf-master".owner = "riinr";
  inputs."ndf-master".repo = "flake-nimble";
  inputs."ndf-master".ref = "flake-pinning";
  inputs."ndf-master".dir = "nimpkgs/n/ndf/master";

    inputs."ndf-0_3_0".type = "github";
  inputs."ndf-0_3_0".owner = "riinr";
  inputs."ndf-0_3_0".repo = "flake-nimble";
  inputs."ndf-0_3_0".ref = "flake-pinning";
  inputs."ndf-0_3_0".dir = "nimpkgs/n/ndf/0_3_0";

    inputs."ndf-0_4_0".type = "github";
  inputs."ndf-0_4_0".owner = "riinr";
  inputs."ndf-0_4_0".repo = "flake-nimble";
  inputs."ndf-0_4_0".ref = "flake-pinning";
  inputs."ndf-0_4_0".dir = "nimpkgs/n/ndf/0_4_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}