{
  description = ''Simple reST HTML generation with some extras.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."lazy_rest-master".type = "github";
  inputs."lazy_rest-master".owner = "riinr";
  inputs."lazy_rest-master".repo = "flake-nimble";
  inputs."lazy_rest-master".ref = "flake-pinning";
  inputs."lazy_rest-master".dir = "nimpkgs/l/lazy_rest/master";

    inputs."lazy_rest-v0_2_0".type = "github";
  inputs."lazy_rest-v0_2_0".owner = "riinr";
  inputs."lazy_rest-v0_2_0".repo = "flake-nimble";
  inputs."lazy_rest-v0_2_0".ref = "flake-pinning";
  inputs."lazy_rest-v0_2_0".dir = "nimpkgs/l/lazy_rest/v0_2_0";

    inputs."lazy_rest-v0_2_2".type = "github";
  inputs."lazy_rest-v0_2_2".owner = "riinr";
  inputs."lazy_rest-v0_2_2".repo = "flake-nimble";
  inputs."lazy_rest-v0_2_2".ref = "flake-pinning";
  inputs."lazy_rest-v0_2_2".dir = "nimpkgs/l/lazy_rest/v0_2_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}