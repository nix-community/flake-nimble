{
  description = ''Memoize Nim functions'';
  inputs.src-memo-0_1_2.flake = false;
  inputs.src-memo-0_1_2.type = "github";
  inputs.src-memo-0_1_2.owner = "andreaferretti";
  inputs.src-memo-0_1_2.repo = "memo";
  inputs.src-memo-0_1_2.ref = "refs/tags/0.1.2";
  
  outputs = { self, nixpkgs, src-memo-0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-memo-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-memo-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}