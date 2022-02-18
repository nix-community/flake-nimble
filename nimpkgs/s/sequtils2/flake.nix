{
  description = ''Additional functions for sequences that are not present in sequtils'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."sequtils2-master".type = "github";
  inputs."sequtils2-master".owner = "riinr";
  inputs."sequtils2-master".repo = "flake-nimble";
  inputs."sequtils2-master".ref = "flake-pinning";
  inputs."sequtils2-master".dir = "nimpkgs/s/sequtils2/master";

    inputs."sequtils2-1_0_0".type = "github";
  inputs."sequtils2-1_0_0".owner = "riinr";
  inputs."sequtils2-1_0_0".repo = "flake-nimble";
  inputs."sequtils2-1_0_0".ref = "flake-pinning";
  inputs."sequtils2-1_0_0".dir = "nimpkgs/s/sequtils2/1_0_0";

    inputs."sequtils2-1_1_0".type = "github";
  inputs."sequtils2-1_1_0".owner = "riinr";
  inputs."sequtils2-1_1_0".repo = "flake-nimble";
  inputs."sequtils2-1_1_0".ref = "flake-pinning";
  inputs."sequtils2-1_1_0".dir = "nimpkgs/s/sequtils2/1_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}