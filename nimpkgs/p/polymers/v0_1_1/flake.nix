{
  description = ''A library of components and systems for use with the Polymorph ECS'';
  inputs.src-polymers-v0_1_1.flake = false;
  inputs.src-polymers-v0_1_1.type = "github";
  inputs.src-polymers-v0_1_1.owner = "rlipsc";
  inputs.src-polymers-v0_1_1.repo = "polymers";
  inputs.src-polymers-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-polymers-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-polymers-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-polymers-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}