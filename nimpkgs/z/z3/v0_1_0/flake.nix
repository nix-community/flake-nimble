{
  description = ''Nim Z3 theorem prover bindings'';
  inputs.src-z3-v0_1_0.flake = false;
  inputs.src-z3-v0_1_0.type = "github";
  inputs.src-z3-v0_1_0.owner = "zevv";
  inputs.src-z3-v0_1_0.repo = "nimz3";
  inputs.src-z3-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-z3-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-z3-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-z3-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}