{
  description = ''Lock-free queue implementations for Nim.'';
  inputs.src-lockfreequeues-v2_0_2.flake = false;
  inputs.src-lockfreequeues-v2_0_2.type = "github";
  inputs.src-lockfreequeues-v2_0_2.owner = "elijahr";
  inputs.src-lockfreequeues-v2_0_2.repo = "lockfreequeues";
  inputs.src-lockfreequeues-v2_0_2.ref = "refs/tags/v2.0.2";
  
  outputs = { self, nixpkgs, src-lockfreequeues-v2_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lockfreequeues-v2_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lockfreequeues-v2_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}