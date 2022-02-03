{
  description = ''A library providing zero-cost chaining for functional abstractions in Nim'';
  inputs.src-zero_functional-master.flake = false;
  inputs.src-zero_functional-master.type = "github";
  inputs.src-zero_functional-master.owner = "zero-functional";
  inputs.src-zero_functional-master.repo = "zero-functional";
  inputs.src-zero_functional-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-zero_functional-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zero_functional-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zero_functional-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}