{
  description = ''Nim wrapper of libxgboost'';
  inputs.src-xgboost.nim-0_1_2.flake = false;
  inputs.src-xgboost.nim-0_1_2.type = "github";
  inputs.src-xgboost.nim-0_1_2.owner = "jackhftang";
  inputs.src-xgboost.nim-0_1_2.repo = "xgboost.nim";
  inputs.src-xgboost.nim-0_1_2.ref = "refs/tags/0.1.2";
  
  outputs = { self, nixpkgs, src-xgboost.nim-0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xgboost.nim-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xgboost.nim-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}