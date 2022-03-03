{
  description = ''Additions to the Nim's standard library, like boost for C++'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimboost-v0_4_2.flake = false;
  inputs.src-nimboost-v0_4_2.type = "github";
  inputs.src-nimboost-v0_4_2.owner = "vegansk";
  inputs.src-nimboost-v0_4_2.repo = "nimboost";
  inputs.src-nimboost-v0_4_2.ref = "refs/tags/v0.4.2";
  inputs.src-nimboost-v0_4_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimboost-v0_4_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimboost-v0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimboost-v0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}