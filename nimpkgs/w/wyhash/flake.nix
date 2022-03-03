{
  description = ''Nim wrapper for wyhash'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."wyhash-main".type = "github";
  inputs."wyhash-main".owner = "riinr";
  inputs."wyhash-main".repo = "flake-nimble";
  inputs."wyhash-main".ref = "flake-pinning";
  inputs."wyhash-main".dir = "nimpkgs/w/wyhash/main";
  inputs."wyhash-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wyhash-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wyhash-0_1_0".type = "github";
  inputs."wyhash-0_1_0".owner = "riinr";
  inputs."wyhash-0_1_0".repo = "flake-nimble";
  inputs."wyhash-0_1_0".ref = "flake-pinning";
  inputs."wyhash-0_1_0".dir = "nimpkgs/w/wyhash/0_1_0";
  inputs."wyhash-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wyhash-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}