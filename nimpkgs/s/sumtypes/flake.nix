{
  description = ''Simple variant generator empowering easy heterogeneous type operations'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sumtypes-master".type = "github";
  inputs."sumtypes-master".owner = "riinr";
  inputs."sumtypes-master".repo = "flake-nimble";
  inputs."sumtypes-master".ref = "flake-pinning";
  inputs."sumtypes-master".dir = "nimpkgs/s/sumtypes/master";
  inputs."sumtypes-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sumtypes-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}