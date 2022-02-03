{
  description = ''Localization package for Nim.'';
  inputs.src-loco-master.flake = false;
  inputs.src-loco-master.type = "github";
  inputs.src-loco-master.owner = "moigagoo";
  inputs.src-loco-master.repo = "loco";
  inputs.src-loco-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-loco-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-loco-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-loco-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}