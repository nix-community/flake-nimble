{
  description = ''Gif Encoder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."gifenc-master".type = "github";
  inputs."gifenc-master".owner = "riinr";
  inputs."gifenc-master".repo = "flake-nimble";
  inputs."gifenc-master".ref = "flake-pinning";
  inputs."gifenc-master".dir = "nimpkgs/g/gifenc/master";
  inputs."gifenc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gifenc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}