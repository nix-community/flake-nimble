{
  description = ''A library providing zero-cost chaining for functional abstractions in Nim'';
  inputs.src-zero_functional-v1_2_0.flake = false;
  inputs.src-zero_functional-v1_2_0.type = "github";
  inputs.src-zero_functional-v1_2_0.owner = "zero-functional";
  inputs.src-zero_functional-v1_2_0.repo = "zero-functional";
  inputs.src-zero_functional-v1_2_0.ref = "refs/tags/v1.2.0";
  
  outputs = { self, nixpkgs, src-zero_functional-v1_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zero_functional-v1_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zero_functional-v1_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}