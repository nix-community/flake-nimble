{
  description = ''nimaterial is a CSS output library based on material design.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimaterial-master".type = "github";
  inputs."nimaterial-master".owner = "riinr";
  inputs."nimaterial-master".repo = "flake-nimble";
  inputs."nimaterial-master".ref = "flake-pinning";
  inputs."nimaterial-master".dir = "nimpkgs/n/nimaterial/master";

    inputs."nimaterial-ver_0_3_0".type = "github";
  inputs."nimaterial-ver_0_3_0".owner = "riinr";
  inputs."nimaterial-ver_0_3_0".repo = "flake-nimble";
  inputs."nimaterial-ver_0_3_0".ref = "flake-pinning";
  inputs."nimaterial-ver_0_3_0".dir = "nimpkgs/n/nimaterial/ver_0_3_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}