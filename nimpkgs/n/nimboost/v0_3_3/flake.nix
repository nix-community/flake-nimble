{
  description = ''Additions to the Nim's standard library, like boost for C++'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimboost-v0_3_3.flake = false;
  inputs.src-nimboost-v0_3_3.type = "github";
  inputs.src-nimboost-v0_3_3.owner = "vegansk";
  inputs.src-nimboost-v0_3_3.repo = "nimboost";
  inputs.src-nimboost-v0_3_3.ref = "refs/tags/v0.3.3";
  inputs.src-nimboost-v0_3_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimboost-v0_3_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimboost-v0_3_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimboost-v0_3_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}