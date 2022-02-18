{
  description = ''OpenStreetMap API Lib for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."openstreetmap-master".type = "github";
  inputs."openstreetmap-master".owner = "riinr";
  inputs."openstreetmap-master".repo = "flake-nimble";
  inputs."openstreetmap-master".ref = "flake-pinning";
  inputs."openstreetmap-master".dir = "nimpkgs/o/openstreetmap/master";

    inputs."openstreetmap-0_2_0".type = "github";
  inputs."openstreetmap-0_2_0".owner = "riinr";
  inputs."openstreetmap-0_2_0".repo = "flake-nimble";
  inputs."openstreetmap-0_2_0".ref = "flake-pinning";
  inputs."openstreetmap-0_2_0".dir = "nimpkgs/o/openstreetmap/0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}