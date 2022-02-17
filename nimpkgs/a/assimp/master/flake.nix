{
  description = ''Wrapper for the assimp library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-assimp-master.flake = false;
  inputs.src-assimp-master.type = "github";
  inputs.src-assimp-master.owner = "barcharcraz";
  inputs.src-assimp-master.repo = "nim-assimp";
  inputs.src-assimp-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-assimp-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-assimp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-assimp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}