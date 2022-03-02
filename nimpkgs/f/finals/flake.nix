{
  description = ''Transparently declare single-set attributes on types.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."finals-master".type = "github";
  inputs."finals-master".owner = "riinr";
  inputs."finals-master".repo = "flake-nimble";
  inputs."finals-master".ref = "flake-pinning";
  inputs."finals-master".dir = "nimpkgs/f/finals/master";
  inputs."finals-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."finals-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}