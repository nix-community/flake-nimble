{
  description = ''Algebraic data types and pattern matching'';
  inputs.src-patty-0_1_4.flake = false;
  inputs.src-patty-0_1_4.type = "github";
  inputs.src-patty-0_1_4.owner = "andreaferretti";
  inputs.src-patty-0_1_4.repo = "patty";
  inputs.src-patty-0_1_4.ref = "refs/tags/0.1.4";
  
  outputs = { self, nixpkgs, src-patty-0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-patty-0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-patty-0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}