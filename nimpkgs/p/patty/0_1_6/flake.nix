{
  description = ''Algebraic data types and pattern matching'';
  inputs.src-patty-0_1_6.flake = false;
  inputs.src-patty-0_1_6.type = "github";
  inputs.src-patty-0_1_6.owner = "andreaferretti";
  inputs.src-patty-0_1_6.repo = "patty";
  inputs.src-patty-0_1_6.ref = "refs/tags/0.1.6";
  
  outputs = { self, nixpkgs, src-patty-0_1_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-patty-0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-patty-0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}