{
  description = ''Kinto Client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-kinto-master.flake = false;
  inputs.src-kinto-master.type = "github";
  inputs.src-kinto-master.owner = "OpenSystemsLab";
  inputs.src-kinto-master.repo = "kinto.nim";
  inputs.src-kinto-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-kinto-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kinto-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-kinto-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}