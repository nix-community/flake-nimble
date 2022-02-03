{
  description = ''Itertools for Nim'';
  inputs.src-itertools-v0_1_1.flake = false;
  inputs.src-itertools-v0_1_1.type = "github";
  inputs.src-itertools-v0_1_1.owner = "narimiran";
  inputs.src-itertools-v0_1_1.repo = "itertools";
  inputs.src-itertools-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-itertools-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-itertools-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-itertools-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}