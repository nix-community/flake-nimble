{
  description = ''A web DSL for Nim'';
  inputs.src-rosencrantz-0_1_3.flake = false;
  inputs.src-rosencrantz-0_1_3.type = "github";
  inputs.src-rosencrantz-0_1_3.owner = "andreaferretti";
  inputs.src-rosencrantz-0_1_3.repo = "rosencrantz";
  inputs.src-rosencrantz-0_1_3.ref = "refs/tags/0.1.3";
  
  outputs = { self, nixpkgs, src-rosencrantz-0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rosencrantz-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rosencrantz-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}