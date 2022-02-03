{
  description = ''Itertools for Nim'';
  inputs.src-itertools-v0_2_2.flake = false;
  inputs.src-itertools-v0_2_2.type = "github";
  inputs.src-itertools-v0_2_2.owner = "narimiran";
  inputs.src-itertools-v0_2_2.repo = "itertools";
  inputs.src-itertools-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, src-itertools-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-itertools-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-itertools-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}