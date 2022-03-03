{
  description = ''Nim bindings for GLFW library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimrod-glfw-master".type = "github";
  inputs."nimrod-glfw-master".owner = "riinr";
  inputs."nimrod-glfw-master".repo = "flake-nimble";
  inputs."nimrod-glfw-master".ref = "flake-pinning";
  inputs."nimrod-glfw-master".dir = "nimpkgs/n/nimrod-glfw/master";
  inputs."nimrod-glfw-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrod-glfw-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}