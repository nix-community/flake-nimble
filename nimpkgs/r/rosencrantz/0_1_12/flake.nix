{
  description = ''A web DSL for Nim'';
  inputs.src-rosencrantz-0_1_12.flake = false;
  inputs.src-rosencrantz-0_1_12.type = "github";
  inputs.src-rosencrantz-0_1_12.owner = "andreaferretti";
  inputs.src-rosencrantz-0_1_12.repo = "rosencrantz";
  inputs.src-rosencrantz-0_1_12.ref = "refs/tags/0.1.12";
  
  outputs = { self, nixpkgs, src-rosencrantz-0_1_12, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rosencrantz-0_1_12;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rosencrantz-0_1_12"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}