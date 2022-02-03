{
  description = ''Serializer and tools for flat binary files.'';
  inputs.src-flatty-master.flake = false;
  inputs.src-flatty-master.type = "github";
  inputs.src-flatty-master.owner = "treeform";
  inputs.src-flatty-master.repo = "flatty";
  inputs.src-flatty-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-flatty-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-flatty-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-flatty-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}