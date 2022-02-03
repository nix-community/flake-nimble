{
  description = ''The image management library written in Nim.'';
  inputs.src-nimage-master.flake = false;
  inputs.src-nimage-master.type = "github";
  inputs.src-nimage-master.owner = "ethosa";
  inputs.src-nimage-master.repo = "nimage";
  inputs.src-nimage-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimage-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimage-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimage-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}