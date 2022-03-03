{
  description = ''A simple hex package for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."hex-master".type = "github";
  inputs."hex-master".owner = "riinr";
  inputs."hex-master".repo = "flake-nimble";
  inputs."hex-master".ref = "flake-pinning";
  inputs."hex-master".dir = "nimpkgs/h/hex/master";
  inputs."hex-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hex-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}