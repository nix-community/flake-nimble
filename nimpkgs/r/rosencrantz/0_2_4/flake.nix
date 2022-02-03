{
  description = ''A web DSL for Nim'';
  inputs.src-rosencrantz-0_2_4.flake = false;
  inputs.src-rosencrantz-0_2_4.type = "github";
  inputs.src-rosencrantz-0_2_4.owner = "andreaferretti";
  inputs.src-rosencrantz-0_2_4.repo = "rosencrantz";
  inputs.src-rosencrantz-0_2_4.ref = "refs/tags/0.2.4";
  
  outputs = { self, nixpkgs, src-rosencrantz-0_2_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rosencrantz-0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rosencrantz-0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}