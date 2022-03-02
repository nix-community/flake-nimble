{
  description = ''Module for working with paths that is as similar as possible to Python's pathlib'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."pythonpathlib-master".type = "github";
  inputs."pythonpathlib-master".owner = "riinr";
  inputs."pythonpathlib-master".repo = "flake-nimble";
  inputs."pythonpathlib-master".ref = "flake-pinning";
  inputs."pythonpathlib-master".dir = "nimpkgs/p/pythonpathlib/master";
  inputs."pythonpathlib-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pythonpathlib-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}