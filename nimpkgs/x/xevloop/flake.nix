{
  description = ''Library to more easily create X11 event loops'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."xevloop-master".type = "github";
  inputs."xevloop-master".owner = "riinr";
  inputs."xevloop-master".repo = "flake-nimble";
  inputs."xevloop-master".ref = "flake-pinning";
  inputs."xevloop-master".dir = "nimpkgs/x/xevloop/master";
  inputs."xevloop-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xevloop-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}