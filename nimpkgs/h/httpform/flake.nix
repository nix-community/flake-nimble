{
  description = ''Http request form parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."httpform-master".type = "github";
  inputs."httpform-master".owner = "riinr";
  inputs."httpform-master".repo = "flake-nimble";
  inputs."httpform-master".ref = "flake-pinning";
  inputs."httpform-master".dir = "nimpkgs/h/httpform/master";

    inputs."httpform-0_1_0".type = "github";
  inputs."httpform-0_1_0".owner = "riinr";
  inputs."httpform-0_1_0".repo = "flake-nimble";
  inputs."httpform-0_1_0".ref = "flake-pinning";
  inputs."httpform-0_1_0".dir = "nimpkgs/h/httpform/0_1_0";

    inputs."httpform-0_2_0".type = "github";
  inputs."httpform-0_2_0".owner = "riinr";
  inputs."httpform-0_2_0".repo = "flake-nimble";
  inputs."httpform-0_2_0".ref = "flake-pinning";
  inputs."httpform-0_2_0".dir = "nimpkgs/h/httpform/0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}