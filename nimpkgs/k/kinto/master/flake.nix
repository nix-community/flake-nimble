{
  description = ''Kinto Client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-Kinto-master.flake = false;
  inputs.src-Kinto-master.type = "github";
  inputs.src-Kinto-master.owner = "OpenSystemsLab";
  inputs.src-Kinto-master.repo = "kinto.nim";
  inputs.src-Kinto-master.ref = "refs/heads/master";
  inputs.src-Kinto-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-Kinto-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-Kinto-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-Kinto-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}