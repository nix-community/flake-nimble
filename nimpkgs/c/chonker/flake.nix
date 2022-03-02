{
  description = ''Arch Linux Pacman Optimizer'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."chonker-master".type = "github";
  inputs."chonker-master".owner = "riinr";
  inputs."chonker-master".repo = "flake-nimble";
  inputs."chonker-master".ref = "flake-pinning";
  inputs."chonker-master".dir = "nimpkgs/c/chonker/master";
  inputs."chonker-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chonker-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."chonker-0_0_1".type = "github";
  inputs."chonker-0_0_1".owner = "riinr";
  inputs."chonker-0_0_1".repo = "flake-nimble";
  inputs."chonker-0_0_1".ref = "flake-pinning";
  inputs."chonker-0_0_1".dir = "nimpkgs/c/chonker/0_0_1";
  inputs."chonker-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chonker-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}