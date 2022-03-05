{
  description = ''Nim wrapper of libxgboost'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-xgboost.nim-0_1_3.flake = false;
  inputs.src-xgboost.nim-0_1_3.type = "github";
  inputs.src-xgboost.nim-0_1_3.owner = "jackhftang";
  inputs.src-xgboost.nim-0_1_3.repo = "xgboost.nim";
  inputs.src-xgboost.nim-0_1_3.ref = "refs/tags/0.1.3";
  inputs.src-xgboost.nim-0_1_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-xgboost.nim-0_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xgboost.nim-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xgboost.nim-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}