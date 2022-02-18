{
  description = ''Series de Tiempo de Argentina Government MultiSync API Client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."seriesdetiempoar-master".type = "github";
  inputs."seriesdetiempoar-master".owner = "riinr";
  inputs."seriesdetiempoar-master".repo = "flake-nimble";
  inputs."seriesdetiempoar-master".ref = "flake-pinning";
  inputs."seriesdetiempoar-master".dir = "nimpkgs/s/seriesdetiempoar/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}