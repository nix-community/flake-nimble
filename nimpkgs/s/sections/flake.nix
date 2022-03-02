{
  description = ''`Section` macro with BDD aliases for testing'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sections-master".type = "github";
  inputs."sections-master".owner = "riinr";
  inputs."sections-master".repo = "flake-nimble";
  inputs."sections-master".ref = "flake-pinning";
  inputs."sections-master".dir = "nimpkgs/s/sections/master";
  inputs."sections-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sections-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}