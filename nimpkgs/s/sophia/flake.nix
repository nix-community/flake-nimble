{
  description = ''Nim wrapper of the Sophia key/value store'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sophia-master".type = "github";
  inputs."sophia-master".owner = "riinr";
  inputs."sophia-master".repo = "flake-nimble";
  inputs."sophia-master".ref = "flake-pinning";
  inputs."sophia-master".dir = "nimpkgs/s/sophia/master";
  inputs."sophia-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sophia-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}