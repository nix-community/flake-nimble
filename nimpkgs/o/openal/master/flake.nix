{
  description = ''An OpenAL wrapper.'';
  inputs.src-openal-master.flake = false;
  inputs.src-openal-master.type = "github";
  inputs.src-openal-master.owner = "treeform";
  inputs.src-openal-master.repo = "openal";
  inputs.src-openal-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-openal-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-openal-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-openal-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}