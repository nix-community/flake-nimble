{
  description = ''Nim wrapper of libxgboost'';
  inputs.src-xgboost.nim-0_1_3.flake = false;
  inputs.src-xgboost.nim-0_1_3.type = "github";
  inputs.src-xgboost.nim-0_1_3.owner = "jackhftang";
  inputs.src-xgboost.nim-0_1_3.repo = "xgboost.nim";
  inputs.src-xgboost.nim-0_1_3.ref = "refs/tags/0.1.3";
  
  outputs = { self, nixpkgs, src-xgboost.nim-0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xgboost.nim-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xgboost.nim-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}