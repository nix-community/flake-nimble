{
  description = ''various vector maths utils for nimrod'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."vecmath-master".type = "github";
  inputs."vecmath-master".owner = "riinr";
  inputs."vecmath-master".repo = "flake-nimble";
  inputs."vecmath-master".ref = "flake-pinning";
  inputs."vecmath-master".dir = "nimpkgs/v/vecmath/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}