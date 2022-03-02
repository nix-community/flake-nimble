{
  description = ''Serial library for Windows.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."winserial-master".type = "github";
  inputs."winserial-master".owner = "riinr";
  inputs."winserial-master".repo = "flake-nimble";
  inputs."winserial-master".ref = "flake-pinning";
  inputs."winserial-master".dir = "nimpkgs/w/winserial/master";
  inputs."winserial-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winserial-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}