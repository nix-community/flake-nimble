{
  description = ''Nim wrapper of libxgboost'';
  inputs.src-xgboost.nim-0_1_1.flake = false;
  inputs.src-xgboost.nim-0_1_1.type = "github";
  inputs.src-xgboost.nim-0_1_1.owner = "jackhftang";
  inputs.src-xgboost.nim-0_1_1.repo = "xgboost.nim";
  inputs.src-xgboost.nim-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-xgboost.nim-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xgboost.nim-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xgboost.nim-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}