{
  description = ''An experimental deep learning framework'';
  inputs.src-exprgrad-main.flake = false;
  inputs.src-exprgrad-main.type = "github";
  inputs.src-exprgrad-main.owner = "can-lehmann";
  inputs.src-exprgrad-main.repo = "exprgrad";
  inputs.src-exprgrad-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-exprgrad-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-exprgrad-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-exprgrad-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}