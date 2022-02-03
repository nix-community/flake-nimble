{
  description = ''A web DSL for Nim'';
  inputs.src-rosencrantz-0_3_2.flake = false;
  inputs.src-rosencrantz-0_3_2.type = "github";
  inputs.src-rosencrantz-0_3_2.owner = "andreaferretti";
  inputs.src-rosencrantz-0_3_2.repo = "rosencrantz";
  inputs.src-rosencrantz-0_3_2.ref = "refs/tags/0.3.2";
  
  outputs = { self, nixpkgs, src-rosencrantz-0_3_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rosencrantz-0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rosencrantz-0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}