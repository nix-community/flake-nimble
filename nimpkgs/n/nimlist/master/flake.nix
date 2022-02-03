{
  description = ''View nim packages in your browser.'';
  inputs.src-nimlist-master.flake = false;
  inputs.src-nimlist-master.type = "github";
  inputs.src-nimlist-master.owner = "flenniken";
  inputs.src-nimlist-master.repo = "nimlist";
  inputs.src-nimlist-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimlist-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimlist-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimlist-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}