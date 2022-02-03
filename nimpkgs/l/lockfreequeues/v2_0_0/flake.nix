{
  description = ''Lock-free queue implementations for Nim.'';
  inputs.src-lockfreequeues-v2_0_0.flake = false;
  inputs.src-lockfreequeues-v2_0_0.type = "github";
  inputs.src-lockfreequeues-v2_0_0.owner = "elijahr";
  inputs.src-lockfreequeues-v2_0_0.repo = "lockfreequeues";
  inputs.src-lockfreequeues-v2_0_0.ref = "refs/tags/v2.0.0";
  
  outputs = { self, nixpkgs, src-lockfreequeues-v2_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lockfreequeues-v2_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lockfreequeues-v2_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}