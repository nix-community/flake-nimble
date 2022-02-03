{
  description = ''Z3 binding for Nim'';
  inputs.src-z3nim-v0_1_0.flake = false;
  inputs.src-z3nim-v0_1_0.type = "github";
  inputs.src-z3nim-v0_1_0.owner = "Double-oxygeN";
  inputs.src-z3nim-v0_1_0.repo = "z3nim";
  inputs.src-z3nim-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-z3nim-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-z3nim-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-z3nim-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}