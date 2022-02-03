{
  description = ''Itertools for Nim'';
  inputs.src-itertools-v0_3_1.flake = false;
  inputs.src-itertools-v0_3_1.type = "github";
  inputs.src-itertools-v0_3_1.owner = "narimiran";
  inputs.src-itertools-v0_3_1.repo = "itertools";
  inputs.src-itertools-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, src-itertools-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-itertools-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-itertools-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}