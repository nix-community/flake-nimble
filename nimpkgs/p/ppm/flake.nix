{
  description = ''lib for ppm image'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ppm-master".type = "github";
  inputs."ppm-master".owner = "riinr";
  inputs."ppm-master".repo = "flake-nimble";
  inputs."ppm-master".ref = "flake-pinning";
  inputs."ppm-master".dir = "nimpkgs/p/ppm/master";
  inputs."ppm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ppm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}