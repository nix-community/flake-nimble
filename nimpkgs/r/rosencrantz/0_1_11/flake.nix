{
  description = ''A web DSL for Nim'';
  inputs.src-rosencrantz-0_1_11.flake = false;
  inputs.src-rosencrantz-0_1_11.type = "github";
  inputs.src-rosencrantz-0_1_11.owner = "andreaferretti";
  inputs.src-rosencrantz-0_1_11.repo = "rosencrantz";
  inputs.src-rosencrantz-0_1_11.ref = "refs/tags/0.1.11";
  
  outputs = { self, nixpkgs, src-rosencrantz-0_1_11, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rosencrantz-0_1_11;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rosencrantz-0_1_11"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}