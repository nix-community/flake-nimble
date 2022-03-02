{
  description = ''terminal tables'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."terminaltables-master".type = "github";
  inputs."terminaltables-master".owner = "riinr";
  inputs."terminaltables-master".repo = "flake-nimble";
  inputs."terminaltables-master".ref = "flake-pinning";
  inputs."terminaltables-master".dir = "nimpkgs/t/terminaltables/master";
  inputs."terminaltables-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."terminaltables-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}