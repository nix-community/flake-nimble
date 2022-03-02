{
  description = ''Windows epoll wrapper.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."wepoll-master".type = "github";
  inputs."wepoll-master".owner = "riinr";
  inputs."wepoll-master".repo = "flake-nimble";
  inputs."wepoll-master".ref = "flake-pinning";
  inputs."wepoll-master".dir = "nimpkgs/w/wepoll/master";
  inputs."wepoll-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wepoll-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wepoll-v0_1_0".type = "github";
  inputs."wepoll-v0_1_0".owner = "riinr";
  inputs."wepoll-v0_1_0".repo = "flake-nimble";
  inputs."wepoll-v0_1_0".ref = "flake-pinning";
  inputs."wepoll-v0_1_0".dir = "nimpkgs/w/wepoll/v0_1_0";
  inputs."wepoll-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wepoll-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}