{
  description = ''remarker_light is a command line tool for building a remark-based slideshow page very easily.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."remarker_light-master".type = "github";
  inputs."remarker_light-master".owner = "riinr";
  inputs."remarker_light-master".repo = "flake-nimble";
  inputs."remarker_light-master".ref = "flake-pinning";
  inputs."remarker_light-master".dir = "nimpkgs/r/remarker_light/master";
  inputs."remarker_light-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."remarker_light-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."remarker_light-1_0_0".type = "github";
  inputs."remarker_light-1_0_0".owner = "riinr";
  inputs."remarker_light-1_0_0".repo = "flake-nimble";
  inputs."remarker_light-1_0_0".ref = "flake-pinning";
  inputs."remarker_light-1_0_0".dir = "nimpkgs/r/remarker_light/1_0_0";
  inputs."remarker_light-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."remarker_light-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."remarker_light-1_0_1".type = "github";
  inputs."remarker_light-1_0_1".owner = "riinr";
  inputs."remarker_light-1_0_1".repo = "flake-nimble";
  inputs."remarker_light-1_0_1".ref = "flake-pinning";
  inputs."remarker_light-1_0_1".dir = "nimpkgs/r/remarker_light/1_0_1";
  inputs."remarker_light-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."remarker_light-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}