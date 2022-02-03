{
  description = ''A web DSL for Nim'';
  inputs.src-rosencrantz-0_3_6.flake = false;
  inputs.src-rosencrantz-0_3_6.type = "github";
  inputs.src-rosencrantz-0_3_6.owner = "andreaferretti";
  inputs.src-rosencrantz-0_3_6.repo = "rosencrantz";
  inputs.src-rosencrantz-0_3_6.ref = "refs/tags/0.3.6";
  
  outputs = { self, nixpkgs, src-rosencrantz-0_3_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rosencrantz-0_3_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rosencrantz-0_3_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}