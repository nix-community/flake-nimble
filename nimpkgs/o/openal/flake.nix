{
  description = ''An OpenAL wrapper.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."openal-master".type = "github";
  inputs."openal-master".owner = "riinr";
  inputs."openal-master".repo = "flake-nimble";
  inputs."openal-master".ref = "flake-pinning";
  inputs."openal-master".dir = "nimpkgs/o/openal/master";
  inputs."openal-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openal-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."openal-0_1_1".type = "github";
  inputs."openal-0_1_1".owner = "riinr";
  inputs."openal-0_1_1".repo = "flake-nimble";
  inputs."openal-0_1_1".ref = "flake-pinning";
  inputs."openal-0_1_1".dir = "nimpkgs/o/openal/0_1_1";
  inputs."openal-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openal-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."openal-v0_1_0".type = "github";
  inputs."openal-v0_1_0".owner = "riinr";
  inputs."openal-v0_1_0".repo = "flake-nimble";
  inputs."openal-v0_1_0".ref = "flake-pinning";
  inputs."openal-v0_1_0".dir = "nimpkgs/o/openal/v0_1_0";
  inputs."openal-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openal-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}