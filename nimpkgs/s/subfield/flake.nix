{
  description = ''Override the dot operator to access nested subfields of a Nim object.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."subfield-master".type = "github";
  inputs."subfield-master".owner = "riinr";
  inputs."subfield-master".repo = "flake-nimble";
  inputs."subfield-master".ref = "flake-pinning";
  inputs."subfield-master".dir = "nimpkgs/s/subfield/master";
  inputs."subfield-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subfield-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}