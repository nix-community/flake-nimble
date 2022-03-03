{
  description = ''Nim library to bundle dependency files into executable'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimdeps-master".type = "github";
  inputs."nimdeps-master".owner = "riinr";
  inputs."nimdeps-master".repo = "flake-nimble";
  inputs."nimdeps-master".ref = "flake-pinning";
  inputs."nimdeps-master".dir = "nimpkgs/n/nimdeps/master";
  inputs."nimdeps-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimdeps-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}