{
  description = ''Various Layonara related functions for NWN Development'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."layonara_nwn-master".type = "github";
  inputs."layonara_nwn-master".owner = "riinr";
  inputs."layonara_nwn-master".repo = "flake-nimble";
  inputs."layonara_nwn-master".ref = "flake-pinning";
  inputs."layonara_nwn-master".dir = "nimpkgs/l/layonara_nwn/master";
  inputs."layonara_nwn-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."layonara_nwn-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}