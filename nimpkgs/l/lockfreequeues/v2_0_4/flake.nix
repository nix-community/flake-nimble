{
  description = ''Lock-free queue implementations for Nim.'';
  inputs.src-lockfreequeues-v2_0_4.flake = false;
  inputs.src-lockfreequeues-v2_0_4.type = "github";
  inputs.src-lockfreequeues-v2_0_4.owner = "elijahr";
  inputs.src-lockfreequeues-v2_0_4.repo = "lockfreequeues";
  inputs.src-lockfreequeues-v2_0_4.ref = "refs/tags/v2.0.4";
  
  outputs = { self, nixpkgs, src-lockfreequeues-v2_0_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lockfreequeues-v2_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lockfreequeues-v2_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}