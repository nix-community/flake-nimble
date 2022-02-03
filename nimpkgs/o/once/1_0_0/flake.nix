{
  description = ''Once provides a type that will enforce that a callback is invoked only once.'';
  inputs.src-once-1_0_0.flake = false;
  inputs.src-once-1_0_0.type = "other";
  inputs.src-once-1_0_0.owner = "~euantorano";
  inputs.src-once-1_0_0.repo = "once.nim";
  inputs.src-once-1_0_0.ref = "refs/tags/1.0.0";
  
  outputs = { self, nixpkgs, src-once-1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-once-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-once-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}