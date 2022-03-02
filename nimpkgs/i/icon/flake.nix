{
  description = ''Generate icon files from PNG files.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."icon-master".type = "github";
  inputs."icon-master".owner = "riinr";
  inputs."icon-master".repo = "flake-nimble";
  inputs."icon-master".ref = "flake-pinning";
  inputs."icon-master".dir = "nimpkgs/i/icon/master";
  inputs."icon-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."icon-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}