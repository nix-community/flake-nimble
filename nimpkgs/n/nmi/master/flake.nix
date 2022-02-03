{
  description = ''nmi display animations aimed to correct users who accidentally enter nmi instead of nim.'';
  inputs.src-nmi-master.flake = false;
  inputs.src-nmi-master.type = "github";
  inputs.src-nmi-master.owner = "jiro4989";
  inputs.src-nmi-master.repo = "nmi";
  inputs.src-nmi-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nmi-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nmi-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nmi-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}