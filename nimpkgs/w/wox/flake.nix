{
  description = ''Helper library for writing Wox plugins in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."wox-master".type = "github";
  inputs."wox-master".owner = "riinr";
  inputs."wox-master".repo = "flake-nimble";
  inputs."wox-master".ref = "flake-pinning";
  inputs."wox-master".dir = "nimpkgs/w/wox/master";
  inputs."wox-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wox-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}