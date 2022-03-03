{
  description = ''Nim interface to gnuplot'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."gnuplot-master".type = "github";
  inputs."gnuplot-master".owner = "riinr";
  inputs."gnuplot-master".repo = "flake-nimble";
  inputs."gnuplot-master".ref = "flake-pinning";
  inputs."gnuplot-master".dir = "nimpkgs/g/gnuplot/master";
  inputs."gnuplot-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnuplot-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}