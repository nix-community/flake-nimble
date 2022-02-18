{
  description = ''Nim interface to gnuplot'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."gnuplot-master".type = "github";
  inputs."gnuplot-master".owner = "riinr";
  inputs."gnuplot-master".repo = "flake-nimble";
  inputs."gnuplot-master".ref = "flake-pinning";
  inputs."gnuplot-master".dir = "nimpkgs/g/gnuplot/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}