{
  description = ''Accurate Floating Point Sums and Products.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."AccurateSums-master".type = "github";
  inputs."AccurateSums-master".owner = "riinr";
  inputs."AccurateSums-master".repo = "flake-nimble";
  inputs."AccurateSums-master".ref = "flake-pinning";
  inputs."AccurateSums-master".dir = "nimpkgs/a/AccurateSums/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}