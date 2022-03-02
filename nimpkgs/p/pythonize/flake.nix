{
  description = ''A higher-level wrapper for the Python Programing Language'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."pythonize-master".type = "github";
  inputs."pythonize-master".owner = "riinr";
  inputs."pythonize-master".repo = "flake-nimble";
  inputs."pythonize-master".ref = "flake-pinning";
  inputs."pythonize-master".dir = "nimpkgs/p/pythonize/master";
  inputs."pythonize-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pythonize-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}