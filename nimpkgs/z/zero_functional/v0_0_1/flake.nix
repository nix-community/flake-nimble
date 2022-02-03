{
  description = ''A library providing zero-cost chaining for functional abstractions in Nim'';
  inputs.src-zero_functional-v0_0_1.flake = false;
  inputs.src-zero_functional-v0_0_1.type = "github";
  inputs.src-zero_functional-v0_0_1.owner = "zero-functional";
  inputs.src-zero_functional-v0_0_1.repo = "zero-functional";
  inputs.src-zero_functional-v0_0_1.ref = "refs/tags/v0.0.1";
  
  outputs = { self, nixpkgs, src-zero_functional-v0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zero_functional-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zero_functional-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}