{
  description = ''The Nim wrapper for tracemoe.'';
  inputs.src-anime-master.flake = false;
  inputs.src-anime-master.type = "github";
  inputs.src-anime-master.owner = "ethosa";
  inputs.src-anime-master.repo = "anime";
  inputs.src-anime-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-anime-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-anime-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-anime-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}