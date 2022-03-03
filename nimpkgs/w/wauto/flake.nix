{
  description = ''Windows automation module'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."wauto-master".type = "github";
  inputs."wauto-master".owner = "riinr";
  inputs."wauto-master".repo = "flake-nimble";
  inputs."wauto-master".ref = "flake-pinning";
  inputs."wauto-master".dir = "nimpkgs/w/wauto/master";
  inputs."wauto-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wauto-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}