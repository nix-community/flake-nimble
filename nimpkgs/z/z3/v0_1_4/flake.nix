{
  description = ''Nim Z3 theorem prover bindings'';
  inputs.src-z3-v0_1_4.flake = false;
  inputs.src-z3-v0_1_4.type = "github";
  inputs.src-z3-v0_1_4.owner = "zevv";
  inputs.src-z3-v0_1_4.repo = "nimz3";
  inputs.src-z3-v0_1_4.ref = "refs/tags/v0.1.4";
  
  outputs = { self, nixpkgs, src-z3-v0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-z3-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-z3-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}