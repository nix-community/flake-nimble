{
  description = ''Signals/slots library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."signals-master".type = "github";
  inputs."signals-master".owner = "riinr";
  inputs."signals-master".repo = "flake-nimble";
  inputs."signals-master".ref = "flake-pinning";
  inputs."signals-master".dir = "nimpkgs/s/signals/master";
  inputs."signals-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."signals-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}