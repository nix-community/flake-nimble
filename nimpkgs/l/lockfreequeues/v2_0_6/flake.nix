{
  description = ''Lock-free queue implementations for Nim.'';
  inputs.src-lockfreequeues-v2_0_6.flake = false;
  inputs.src-lockfreequeues-v2_0_6.type = "github";
  inputs.src-lockfreequeues-v2_0_6.owner = "elijahr";
  inputs.src-lockfreequeues-v2_0_6.repo = "lockfreequeues";
  inputs.src-lockfreequeues-v2_0_6.ref = "refs/tags/v2.0.6";
  
  outputs = { self, nixpkgs, src-lockfreequeues-v2_0_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lockfreequeues-v2_0_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lockfreequeues-v2_0_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}