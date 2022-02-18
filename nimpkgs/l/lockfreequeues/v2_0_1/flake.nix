{
  description = ''Lock-free queue implementations for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-lockfreequeues-v2_0_1.flake = false;
  inputs.src-lockfreequeues-v2_0_1.type = "github";
  inputs.src-lockfreequeues-v2_0_1.owner = "elijahr";
  inputs.src-lockfreequeues-v2_0_1.repo = "lockfreequeues";
  inputs.src-lockfreequeues-v2_0_1.ref = "refs/tags/v2.0.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-lockfreequeues-v2_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lockfreequeues-v2_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-lockfreequeues-v2_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}