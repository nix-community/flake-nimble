{
  description = ''Algebraic data types and pattern matching'';
  inputs.src-patty-0_1_9.flake = false;
  inputs.src-patty-0_1_9.type = "github";
  inputs.src-patty-0_1_9.owner = "andreaferretti";
  inputs.src-patty-0_1_9.repo = "patty";
  inputs.src-patty-0_1_9.ref = "refs/tags/0.1.9";
  
  outputs = { self, nixpkgs, src-patty-0_1_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-patty-0_1_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-patty-0_1_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}