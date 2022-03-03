{
  description = ''Api Calls for Ford vehicles equipped with the fordpass app.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ffpass-master".type = "github";
  inputs."ffpass-master".owner = "riinr";
  inputs."ffpass-master".repo = "flake-nimble";
  inputs."ffpass-master".ref = "flake-pinning";
  inputs."ffpass-master".dir = "nimpkgs/f/ffpass/master";
  inputs."ffpass-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ffpass-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}