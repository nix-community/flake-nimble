{
  description = ''Wrapper for the assimp library'';
  inputs.src-assimp-master.flake = false;
  inputs.src-assimp-master.type = "github";
  inputs.src-assimp-master.owner = "barcharcraz";
  inputs.src-assimp-master.repo = "nim-assimp";
  inputs.src-assimp-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-assimp-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-assimp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-assimp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}