{
  description = ''Wrapper around the open trivia db api'';
  inputs.src-opentdb-master.flake = false;
  inputs.src-opentdb-master.type = "github";
  inputs.src-opentdb-master.owner = "ire4ever1190";
  inputs.src-opentdb-master.repo = "nim-opentmdb";
  inputs.src-opentdb-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-opentdb-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opentdb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-opentdb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}