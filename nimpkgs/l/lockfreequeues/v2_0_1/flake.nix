{
  description = ''Lock-free queue implementations for Nim.'';
  inputs.src-lockfreequeues-v2_0_1.flake = false;
  inputs.src-lockfreequeues-v2_0_1.type = "github";
  inputs.src-lockfreequeues-v2_0_1.owner = "elijahr";
  inputs.src-lockfreequeues-v2_0_1.repo = "lockfreequeues";
  inputs.src-lockfreequeues-v2_0_1.ref = "refs/tags/v2.0.1";
  
  outputs = { self, nixpkgs, src-lockfreequeues-v2_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lockfreequeues-v2_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lockfreequeues-v2_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}