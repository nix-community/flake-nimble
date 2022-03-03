{
  description = ''Loop efficiently over a variadic number of containers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."loopfusion-master".type = "github";
  inputs."loopfusion-master".owner = "riinr";
  inputs."loopfusion-master".repo = "flake-nimble";
  inputs."loopfusion-master".ref = "flake-pinning";
  inputs."loopfusion-master".dir = "nimpkgs/l/loopfusion/master";
  inputs."loopfusion-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loopfusion-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}