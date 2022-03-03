{
  description = ''Variable length arrays for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."vla-master".type = "github";
  inputs."vla-master".owner = "riinr";
  inputs."vla-master".repo = "flake-nimble";
  inputs."vla-master".ref = "flake-pinning";
  inputs."vla-master".dir = "nimpkgs/v/vla/master";
  inputs."vla-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vla-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}