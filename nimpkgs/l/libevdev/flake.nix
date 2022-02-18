{
  description = ''Wrapper for libevdev, Linux input device processing library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."libevdev-master".type = "github";
  inputs."libevdev-master".owner = "riinr";
  inputs."libevdev-master".repo = "flake-nimble";
  inputs."libevdev-master".ref = "flake-pinning";
  inputs."libevdev-master".dir = "nimpkgs/l/libevdev/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}