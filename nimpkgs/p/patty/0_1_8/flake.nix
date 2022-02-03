{
  description = ''Algebraic data types and pattern matching'';
  inputs.src-patty-0_1_8.flake = false;
  inputs.src-patty-0_1_8.type = "github";
  inputs.src-patty-0_1_8.owner = "andreaferretti";
  inputs.src-patty-0_1_8.repo = "patty";
  inputs.src-patty-0_1_8.ref = "refs/tags/0.1.8";
  
  outputs = { self, nixpkgs, src-patty-0_1_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-patty-0_1_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-patty-0_1_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}