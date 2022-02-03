{
  description = ''Localization package for Nim.'';
  inputs.src-loco-0_1_0.flake = false;
  inputs.src-loco-0_1_0.type = "github";
  inputs.src-loco-0_1_0.owner = "moigagoo";
  inputs.src-loco-0_1_0.repo = "loco";
  inputs.src-loco-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-loco-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-loco-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-loco-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}