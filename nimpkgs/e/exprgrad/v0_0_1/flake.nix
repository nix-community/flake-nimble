{
  description = ''An experimental deep learning framework'';
  inputs.src-exprgrad-v0_0_1.flake = false;
  inputs.src-exprgrad-v0_0_1.type = "github";
  inputs.src-exprgrad-v0_0_1.owner = "can-lehmann";
  inputs.src-exprgrad-v0_0_1.repo = "exprgrad";
  inputs.src-exprgrad-v0_0_1.ref = "refs/tags/v0.0.1";
  
  outputs = { self, nixpkgs, src-exprgrad-v0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-exprgrad-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-exprgrad-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}