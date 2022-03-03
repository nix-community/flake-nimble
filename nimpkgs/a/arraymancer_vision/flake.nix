{
  description = ''Image transformation and visualization utilities for arraymancer'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."arraymancer_vision-master".type = "github";
  inputs."arraymancer_vision-master".owner = "riinr";
  inputs."arraymancer_vision-master".repo = "flake-nimble";
  inputs."arraymancer_vision-master".ref = "flake-pinning";
  inputs."arraymancer_vision-master".dir = "nimpkgs/a/arraymancer_vision/master";
  inputs."arraymancer_vision-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer_vision-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}