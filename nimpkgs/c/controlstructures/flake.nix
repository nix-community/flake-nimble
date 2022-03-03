{
  description = ''Additional control structures'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."controlstructures-master".type = "github";
  inputs."controlstructures-master".owner = "riinr";
  inputs."controlstructures-master".repo = "flake-nimble";
  inputs."controlstructures-master".ref = "flake-pinning";
  inputs."controlstructures-master".dir = "nimpkgs/c/controlstructures/master";
  inputs."controlstructures-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."controlstructures-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}