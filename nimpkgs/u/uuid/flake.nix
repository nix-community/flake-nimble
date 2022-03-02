{
  description = ''UUID wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."uuid-master".type = "github";
  inputs."uuid-master".owner = "riinr";
  inputs."uuid-master".repo = "flake-nimble";
  inputs."uuid-master".ref = "flake-pinning";
  inputs."uuid-master".dir = "nimpkgs/u/uuid/master";
  inputs."uuid-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuid-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}