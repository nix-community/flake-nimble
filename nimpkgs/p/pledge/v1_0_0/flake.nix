{
  description = ''OpenBSDs pledge(2) for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-pledge-v1_0_0.flake = false;
  inputs.src-pledge-v1_0_0.type = "github";
  inputs.src-pledge-v1_0_0.owner = "euantorano";
  inputs.src-pledge-v1_0_0.repo = "pledge.nim";
  inputs.src-pledge-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pledge-v1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pledge-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pledge-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}