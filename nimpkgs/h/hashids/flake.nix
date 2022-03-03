{
  description = ''Nim implementation of Hashids'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."hashids-master".type = "github";
  inputs."hashids-master".owner = "riinr";
  inputs."hashids-master".repo = "flake-nimble";
  inputs."hashids-master".ref = "flake-pinning";
  inputs."hashids-master".dir = "nimpkgs/h/hashids/master";
  inputs."hashids-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hashids-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}