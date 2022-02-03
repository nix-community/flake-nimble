{
  description = ''Memoize Nim functions'';
  inputs.src-memo-0_1_3.flake = false;
  inputs.src-memo-0_1_3.type = "github";
  inputs.src-memo-0_1_3.owner = "andreaferretti";
  inputs.src-memo-0_1_3.repo = "memo";
  inputs.src-memo-0_1_3.ref = "refs/tags/0.1.3";
  
  outputs = { self, nixpkgs, src-memo-0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-memo-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-memo-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}