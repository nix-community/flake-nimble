{
  description = ''An entity component system package'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."arksys-master".type = "github";
  inputs."arksys-master".owner = "riinr";
  inputs."arksys-master".repo = "flake-nimble";
  inputs."arksys-master".ref = "flake-pinning";
  inputs."arksys-master".dir = "nimpkgs/a/arksys/master";
  inputs."arksys-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arksys-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}