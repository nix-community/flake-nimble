{
  description = ''Wrapper for libevdev, Linux input device processing library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."libevdev-master".type = "github";
  inputs."libevdev-master".owner = "riinr";
  inputs."libevdev-master".repo = "flake-nimble";
  inputs."libevdev-master".ref = "flake-pinning";
  inputs."libevdev-master".dir = "nimpkgs/l/libevdev/master";
  inputs."libevdev-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libevdev-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}