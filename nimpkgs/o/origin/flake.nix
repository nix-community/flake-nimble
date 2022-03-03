{
  description = ''A graphics math library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."origin-master".type = "github";
  inputs."origin-master".owner = "riinr";
  inputs."origin-master".repo = "flake-nimble";
  inputs."origin-master".ref = "flake-pinning";
  inputs."origin-master".dir = "nimpkgs/o/origin/master";
  inputs."origin-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."origin-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}