{
  description = ''A web DSL for Nim'';
  inputs.src-rosencrantz-0_1_0.flake = false;
  inputs.src-rosencrantz-0_1_0.type = "github";
  inputs.src-rosencrantz-0_1_0.owner = "andreaferretti";
  inputs.src-rosencrantz-0_1_0.repo = "rosencrantz";
  inputs.src-rosencrantz-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-rosencrantz-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rosencrantz-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rosencrantz-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}