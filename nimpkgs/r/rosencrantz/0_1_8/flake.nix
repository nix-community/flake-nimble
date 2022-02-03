{
  description = ''A web DSL for Nim'';
  inputs.src-rosencrantz-0_1_8.flake = false;
  inputs.src-rosencrantz-0_1_8.type = "github";
  inputs.src-rosencrantz-0_1_8.owner = "andreaferretti";
  inputs.src-rosencrantz-0_1_8.repo = "rosencrantz";
  inputs.src-rosencrantz-0_1_8.ref = "refs/tags/0.1.8";
  
  outputs = { self, nixpkgs, src-rosencrantz-0_1_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rosencrantz-0_1_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rosencrantz-0_1_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}