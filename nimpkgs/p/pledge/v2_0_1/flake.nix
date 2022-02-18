{
  description = ''OpenBSDs pledge(2) for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-pledge-v2_0_1.flake = false;
  inputs.src-pledge-v2_0_1.type = "github";
  inputs.src-pledge-v2_0_1.owner = "euantorano";
  inputs.src-pledge-v2_0_1.repo = "pledge.nim";
  inputs.src-pledge-v2_0_1.ref = "refs/tags/v2.0.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pledge-v2_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pledge-v2_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pledge-v2_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}