{
  description = ''The elvis package implements a 'truthy', 'ternary' and a 'coalesce' operator to Nim as syntactic sugar for working with conditional expressions'';
  inputs.src-elvis-v0_5_0.flake = false;
  inputs.src-elvis-v0_5_0.type = "github";
  inputs.src-elvis-v0_5_0.owner = "mattaylor";
  inputs.src-elvis-v0_5_0.repo = "elvis";
  inputs.src-elvis-v0_5_0.ref = "refs/tags/v0.5.0";
  
  outputs = { self, nixpkgs, src-elvis-v0_5_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-elvis-v0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-elvis-v0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}