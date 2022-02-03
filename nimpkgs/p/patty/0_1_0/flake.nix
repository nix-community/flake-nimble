{
  description = ''Algebraic data types and pattern matching'';
  inputs.src-patty-0_1_0.flake = false;
  inputs.src-patty-0_1_0.type = "github";
  inputs.src-patty-0_1_0.owner = "andreaferretti";
  inputs.src-patty-0_1_0.repo = "patty";
  inputs.src-patty-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-patty-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-patty-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-patty-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}