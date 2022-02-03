{
  description = ''Nim wrapper of libxgboost'';
  inputs.src-xgboost.nim-master.flake = false;
  inputs.src-xgboost.nim-master.type = "github";
  inputs.src-xgboost.nim-master.owner = "jackhftang";
  inputs.src-xgboost.nim-master.repo = "xgboost.nim";
  inputs.src-xgboost.nim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-xgboost.nim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xgboost.nim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xgboost.nim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}