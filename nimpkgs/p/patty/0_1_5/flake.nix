{
  description = ''Algebraic data types and pattern matching'';
  inputs.src-patty-0_1_5.flake = false;
  inputs.src-patty-0_1_5.type = "github";
  inputs.src-patty-0_1_5.owner = "andreaferretti";
  inputs.src-patty-0_1_5.repo = "patty";
  inputs.src-patty-0_1_5.ref = "refs/tags/0.1.5";
  
  outputs = { self, nixpkgs, src-patty-0_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-patty-0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-patty-0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}