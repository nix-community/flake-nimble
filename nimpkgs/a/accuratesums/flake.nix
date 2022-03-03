{
  description = ''Accurate Floating Point Sums and Products.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."accuratesums-master".type = "github";
  inputs."accuratesums-master".owner = "riinr";
  inputs."accuratesums-master".repo = "flake-nimble";
  inputs."accuratesums-master".ref = "flake-pinning";
  inputs."accuratesums-master".dir = "nimpkgs/a/accuratesums/master";
  inputs."accuratesums-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."accuratesums-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}