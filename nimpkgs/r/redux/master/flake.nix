{
  description = ''Predictable state container.'';
  inputs.src-redux-master.flake = false;
  inputs.src-redux-master.type = "github";
  inputs.src-redux-master.owner = "pragmagic";
  inputs.src-redux-master.repo = "redux.nim";
  inputs.src-redux-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-redux-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redux-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-redux-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}