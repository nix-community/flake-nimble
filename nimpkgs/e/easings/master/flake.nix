{
  description = ''Robert Penner Easing Functions for Nim'';
  inputs.src-easings-master.flake = false;
  inputs.src-easings-master.type = "github";
  inputs.src-easings-master.owner = "juancarlospaco";
  inputs.src-easings-master.repo = "nim-easings";
  inputs.src-easings-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-easings-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-easings-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-easings-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}