{
  description = ''Polygon Clipper Library (Martinez Algorithm)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."polyBool-master".type = "github";
  inputs."polyBool-master".owner = "riinr";
  inputs."polyBool-master".repo = "flake-nimble";
  inputs."polyBool-master".ref = "flake-pinning";
  inputs."polyBool-master".dir = "nimpkgs/p/polyBool/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}