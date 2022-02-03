{
  description = ''Localization package for Nim.'';
  inputs.src-loco-0_1_2.flake = false;
  inputs.src-loco-0_1_2.type = "github";
  inputs.src-loco-0_1_2.owner = "moigagoo";
  inputs.src-loco-0_1_2.repo = "loco";
  inputs.src-loco-0_1_2.ref = "refs/tags/0.1.2";
  
  outputs = { self, nixpkgs, src-loco-0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-loco-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-loco-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}