{
  description = ''Series de Tiempo de Argentina Government MultiSync API Client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-seriesdetiempoar-master.flake = false;
  inputs.src-seriesdetiempoar-master.type = "github";
  inputs.src-seriesdetiempoar-master.owner = "juancarlospaco";
  inputs.src-seriesdetiempoar-master.repo = "nim-seriesdetiempoar";
  inputs.src-seriesdetiempoar-master.ref = "refs/heads/master";
  inputs.src-seriesdetiempoar-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-seriesdetiempoar-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-seriesdetiempoar-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-seriesdetiempoar-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}