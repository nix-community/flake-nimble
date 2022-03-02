{
  description = ''This package allows you to determine the running version of the Windows operating system.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."winversion-master".type = "github";
  inputs."winversion-master".owner = "riinr";
  inputs."winversion-master".repo = "flake-nimble";
  inputs."winversion-master".ref = "flake-pinning";
  inputs."winversion-master".dir = "nimpkgs/w/winversion/master";
  inputs."winversion-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winversion-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}