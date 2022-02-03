{
  description = ''A web DSL for Nim'';
  inputs.src-rosencrantz-0_1_9.flake = false;
  inputs.src-rosencrantz-0_1_9.type = "github";
  inputs.src-rosencrantz-0_1_9.owner = "andreaferretti";
  inputs.src-rosencrantz-0_1_9.repo = "rosencrantz";
  inputs.src-rosencrantz-0_1_9.ref = "refs/tags/0.1.9";
  
  outputs = { self, nixpkgs, src-rosencrantz-0_1_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rosencrantz-0_1_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rosencrantz-0_1_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}