{
  description = ''Algebraic data types and pattern matching'';
  inputs.src-patty-0_1_7.flake = false;
  inputs.src-patty-0_1_7.type = "github";
  inputs.src-patty-0_1_7.owner = "andreaferretti";
  inputs.src-patty-0_1_7.repo = "patty";
  inputs.src-patty-0_1_7.ref = "refs/tags/0.1.7";
  
  outputs = { self, nixpkgs, src-patty-0_1_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-patty-0_1_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-patty-0_1_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}