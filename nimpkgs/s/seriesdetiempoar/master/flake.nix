{
  description = ''Series de Tiempo de Argentina Government MultiSync API Client for Nim'';
  inputs.src-seriesdetiempoar-master.flake = false;
  inputs.src-seriesdetiempoar-master.type = "github";
  inputs.src-seriesdetiempoar-master.owner = "juancarlospaco";
  inputs.src-seriesdetiempoar-master.repo = "nim-seriesdetiempoar";
  inputs.src-seriesdetiempoar-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-seriesdetiempoar-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-seriesdetiempoar-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-seriesdetiempoar-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}