{
  description = ''Auto-generate a Python module that wraps a Nim module.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."pymod-master".type = "github";
  inputs."pymod-master".owner = "riinr";
  inputs."pymod-master".repo = "flake-nimble";
  inputs."pymod-master".ref = "flake-pinning";
  inputs."pymod-master".dir = "nimpkgs/p/pymod/master";
  inputs."pymod-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pymod-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}