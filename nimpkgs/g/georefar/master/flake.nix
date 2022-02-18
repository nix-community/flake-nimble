{
  description = ''GeoRef Argentina Government MultiSync API Client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-georefar-master.flake = false;
  inputs.src-georefar-master.type = "github";
  inputs.src-georefar-master.owner = "juancarlospaco";
  inputs.src-georefar-master.repo = "nim-georefar";
  inputs.src-georefar-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-georefar-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-georefar-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-georefar-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}