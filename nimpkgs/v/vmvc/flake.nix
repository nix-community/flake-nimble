{
  description = ''a skeleton/structure for a variation on the mvc pattern, similar to dci. For command line and gui programs. it's a middle ground between rapid application development and handling software complexity.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."vmvc-master".type = "github";
  inputs."vmvc-master".owner = "riinr";
  inputs."vmvc-master".repo = "flake-nimble";
  inputs."vmvc-master".ref = "flake-pinning";
  inputs."vmvc-master".dir = "nimpkgs/v/vmvc/master";
  inputs."vmvc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmvc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}