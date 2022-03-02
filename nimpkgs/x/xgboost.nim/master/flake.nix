{
  description = ''Nim wrapper of libxgboost'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-xgboost.nim-master.flake = false;
  inputs.src-xgboost.nim-master.type = "github";
  inputs.src-xgboost.nim-master.owner = "jackhftang";
  inputs.src-xgboost.nim-master.repo = "xgboost.nim";
  inputs.src-xgboost.nim-master.ref = "refs/heads/master";
  inputs.src-xgboost.nim-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-xgboost.nim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xgboost.nim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xgboost.nim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}