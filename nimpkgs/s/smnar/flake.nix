{
  description = ''Servicio Meteorologico Nacional Argentina API Client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."smnar-master".type = "github";
  inputs."smnar-master".owner = "riinr";
  inputs."smnar-master".repo = "flake-nimble";
  inputs."smnar-master".ref = "flake-pinning";
  inputs."smnar-master".dir = "nimpkgs/s/smnar/master";
  inputs."smnar-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."smnar-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}