{
  description = ''Nim wrapper of libxgboost'';
  inputs.src-xgboost.nim-0_1_0.flake = false;
  inputs.src-xgboost.nim-0_1_0.type = "github";
  inputs.src-xgboost.nim-0_1_0.owner = "jackhftang";
  inputs.src-xgboost.nim-0_1_0.repo = "xgboost.nim";
  inputs.src-xgboost.nim-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-xgboost.nim-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xgboost.nim-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xgboost.nim-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}