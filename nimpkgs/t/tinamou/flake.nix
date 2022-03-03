{
  description = ''Game Library in Nim with SDL2'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."tinamou-master".type = "github";
  inputs."tinamou-master".owner = "riinr";
  inputs."tinamou-master".repo = "flake-nimble";
  inputs."tinamou-master".ref = "flake-pinning";
  inputs."tinamou-master".dir = "nimpkgs/t/tinamou/master";
  inputs."tinamou-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tinamou-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}