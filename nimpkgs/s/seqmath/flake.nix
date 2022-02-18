{
  description = ''Nim math library for sequences and nested sequences (extends math library)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."seqmath-master".type = "github";
  inputs."seqmath-master".owner = "riinr";
  inputs."seqmath-master".repo = "flake-nimble";
  inputs."seqmath-master".ref = "flake-pinning";
  inputs."seqmath-master".dir = "nimpkgs/s/seqmath/master";

    inputs."seqmath-0_1_2".type = "github";
  inputs."seqmath-0_1_2".owner = "riinr";
  inputs."seqmath-0_1_2".repo = "flake-nimble";
  inputs."seqmath-0_1_2".ref = "flake-pinning";
  inputs."seqmath-0_1_2".dir = "nimpkgs/s/seqmath/0_1_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}