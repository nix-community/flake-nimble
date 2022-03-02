{
  description = ''Bindings for the Sixense Core API.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sixense-master".type = "github";
  inputs."sixense-master".owner = "riinr";
  inputs."sixense-master".repo = "flake-nimble";
  inputs."sixense-master".ref = "flake-pinning";
  inputs."sixense-master".dir = "nimpkgs/s/sixense/master";
  inputs."sixense-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sixense-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}