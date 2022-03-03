{
  description = ''Bindings for the Oculus VR SDK.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."oculus-master".type = "github";
  inputs."oculus-master".owner = "riinr";
  inputs."oculus-master".repo = "flake-nimble";
  inputs."oculus-master".ref = "flake-pinning";
  inputs."oculus-master".dir = "nimpkgs/o/oculus/master";
  inputs."oculus-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oculus-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}