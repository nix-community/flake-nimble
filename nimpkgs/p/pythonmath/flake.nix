{
  description = ''Module to provide an interface as similar as possible to Python's math libary'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."pythonmath-master".type = "github";
  inputs."pythonmath-master".owner = "riinr";
  inputs."pythonmath-master".repo = "flake-nimble";
  inputs."pythonmath-master".ref = "flake-pinning";
  inputs."pythonmath-master".dir = "nimpkgs/p/pythonmath/master";
  inputs."pythonmath-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pythonmath-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}