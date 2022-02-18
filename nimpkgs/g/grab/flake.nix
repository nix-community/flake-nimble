{
  description = ''grab statement for importing Nimble packages, similar to Groovy's Grape'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."grab-master".type = "github";
  inputs."grab-master".owner = "riinr";
  inputs."grab-master".repo = "flake-nimble";
  inputs."grab-master".ref = "flake-pinning";
  inputs."grab-master".dir = "nimpkgs/g/grab/master";

    inputs."grab-v0_1_0".type = "github";
  inputs."grab-v0_1_0".owner = "riinr";
  inputs."grab-v0_1_0".repo = "flake-nimble";
  inputs."grab-v0_1_0".ref = "flake-pinning";
  inputs."grab-v0_1_0".dir = "nimpkgs/g/grab/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}