{
  description = ''A collection of easing curves for animation purposes.'';
  inputs.src-skEasing-master.flake = false;
  inputs.src-skEasing-master.type = "github";
  inputs.src-skEasing-master.owner = "Skrylar";
  inputs.src-skEasing-master.repo = "skEasing";
  inputs.src-skEasing-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-skEasing-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-skEasing-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-skEasing-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}