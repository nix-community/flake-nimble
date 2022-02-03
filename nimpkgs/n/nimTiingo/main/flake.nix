{
  description = ''Tiingo'';
  inputs.src-nimTiingo-main.flake = false;
  inputs.src-nimTiingo-main.type = "github";
  inputs.src-nimTiingo-main.owner = "rolandgg";
  inputs.src-nimTiingo-main.repo = "nimTiingo";
  inputs.src-nimTiingo-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-nimTiingo-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimTiingo-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimTiingo-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}