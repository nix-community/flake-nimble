{
  description = ''String interning library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."names-master".type = "github";
  inputs."names-master".owner = "riinr";
  inputs."names-master".repo = "flake-nimble";
  inputs."names-master".ref = "flake-pinning";
  inputs."names-master".dir = "nimpkgs/n/names/master";
  inputs."names-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."names-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."names-v0_1_0".type = "github";
  inputs."names-v0_1_0".owner = "riinr";
  inputs."names-v0_1_0".repo = "flake-nimble";
  inputs."names-v0_1_0".ref = "flake-pinning";
  inputs."names-v0_1_0".dir = "nimpkgs/n/names/v0_1_0";
  inputs."names-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."names-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}