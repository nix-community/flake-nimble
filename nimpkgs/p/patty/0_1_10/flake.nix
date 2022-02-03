{
  description = ''Algebraic data types and pattern matching'';
  inputs.src-patty-0_1_10.flake = false;
  inputs.src-patty-0_1_10.type = "github";
  inputs.src-patty-0_1_10.owner = "andreaferretti";
  inputs.src-patty-0_1_10.repo = "patty";
  inputs.src-patty-0_1_10.ref = "refs/tags/0.1.10";
  
  outputs = { self, nixpkgs, src-patty-0_1_10, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-patty-0_1_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-patty-0_1_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}