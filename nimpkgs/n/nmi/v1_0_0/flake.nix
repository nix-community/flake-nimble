{
  description = ''nmi display animations aimed to correct users who accidentally enter nmi instead of nim.'';
  inputs.src-nmi-v1_0_0.flake = false;
  inputs.src-nmi-v1_0_0.type = "github";
  inputs.src-nmi-v1_0_0.owner = "jiro4989";
  inputs.src-nmi-v1_0_0.repo = "nmi";
  inputs.src-nmi-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, src-nmi-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nmi-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nmi-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}