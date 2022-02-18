{
  description = ''Additions to the Nim's standard library, like boost for C++'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimboost-v0_3_5.flake = false;
  inputs.src-nimboost-v0_3_5.type = "github";
  inputs.src-nimboost-v0_3_5.owner = "vegansk";
  inputs.src-nimboost-v0_3_5.repo = "nimboost";
  inputs.src-nimboost-v0_3_5.ref = "refs/tags/v0.3.5";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimboost-v0_3_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimboost-v0_3_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimboost-v0_3_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}