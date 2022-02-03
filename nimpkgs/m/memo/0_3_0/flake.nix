{
  description = ''Memoize Nim functions'';
  inputs.src-memo-0_3_0.flake = false;
  inputs.src-memo-0_3_0.type = "github";
  inputs.src-memo-0_3_0.owner = "andreaferretti";
  inputs.src-memo-0_3_0.repo = "memo";
  inputs.src-memo-0_3_0.ref = "refs/tags/0.3.0";
  
  outputs = { self, nixpkgs, src-memo-0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-memo-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-memo-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}