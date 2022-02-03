{
  description = ''Memoize Nim functions'';
  inputs.src-memo-master.flake = false;
  inputs.src-memo-master.type = "github";
  inputs.src-memo-master.owner = "andreaferretti";
  inputs.src-memo-master.repo = "memo";
  inputs.src-memo-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-memo-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-memo-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-memo-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}