{
  description = ''Bindings to the Keystone Assembler.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."keystone-master".type = "github";
  inputs."keystone-master".owner = "riinr";
  inputs."keystone-master".repo = "flake-nimble";
  inputs."keystone-master".ref = "flake-pinning";
  inputs."keystone-master".dir = "nimpkgs/k/keystone/master";
  inputs."keystone-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."keystone-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}