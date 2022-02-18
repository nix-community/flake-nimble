{
  description = ''apache arrow bindings for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimarrow-master".type = "github";
  inputs."nimarrow-master".owner = "riinr";
  inputs."nimarrow-master".repo = "flake-nimble";
  inputs."nimarrow-master".ref = "flake-pinning";
  inputs."nimarrow-master".dir = "nimpkgs/n/nimarrow/master";

    inputs."nimarrow-v0_1_1".type = "github";
  inputs."nimarrow-v0_1_1".owner = "riinr";
  inputs."nimarrow-v0_1_1".repo = "flake-nimble";
  inputs."nimarrow-v0_1_1".ref = "flake-pinning";
  inputs."nimarrow-v0_1_1".dir = "nimpkgs/n/nimarrow/v0_1_1";

    inputs."nimarrow-v0_1_2".type = "github";
  inputs."nimarrow-v0_1_2".owner = "riinr";
  inputs."nimarrow-v0_1_2".repo = "flake-nimble";
  inputs."nimarrow-v0_1_2".ref = "flake-pinning";
  inputs."nimarrow-v0_1_2".dir = "nimpkgs/n/nimarrow/v0_1_2";

    inputs."nimarrow-v0_1_3".type = "github";
  inputs."nimarrow-v0_1_3".owner = "riinr";
  inputs."nimarrow-v0_1_3".repo = "flake-nimble";
  inputs."nimarrow-v0_1_3".ref = "flake-pinning";
  inputs."nimarrow-v0_1_3".dir = "nimpkgs/n/nimarrow/v0_1_3";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}