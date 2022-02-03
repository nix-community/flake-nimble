{
  description = ''A web DSL for Nim'';
  inputs.src-rosencrantz-0_4_1.flake = false;
  inputs.src-rosencrantz-0_4_1.type = "github";
  inputs.src-rosencrantz-0_4_1.owner = "andreaferretti";
  inputs.src-rosencrantz-0_4_1.repo = "rosencrantz";
  inputs.src-rosencrantz-0_4_1.ref = "refs/tags/0.4.1";
  
  outputs = { self, nixpkgs, src-rosencrantz-0_4_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rosencrantz-0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rosencrantz-0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}