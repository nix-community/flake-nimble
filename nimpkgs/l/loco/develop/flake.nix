{
  description = ''Localization package for Nim.'';
  inputs.src-loco-develop.flake = false;
  inputs.src-loco-develop.type = "github";
  inputs.src-loco-develop.owner = "moigagoo";
  inputs.src-loco-develop.repo = "loco";
  inputs.src-loco-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, src-loco-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-loco-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-loco-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}