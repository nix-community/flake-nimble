{
  description = ''A native-nim implementaton of the sBOX generic container format.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sksbox-master".type = "github";
  inputs."sksbox-master".owner = "riinr";
  inputs."sksbox-master".repo = "flake-nimble";
  inputs."sksbox-master".ref = "flake-pinning";
  inputs."sksbox-master".dir = "nimpkgs/s/sksbox/master";
  inputs."sksbox-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sksbox-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}