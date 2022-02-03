{
  description = ''Wrapper around the open trivia db api'';
  inputs.src-opentdb-1_1_1.flake = false;
  inputs.src-opentdb-1_1_1.type = "github";
  inputs.src-opentdb-1_1_1.owner = "ire4ever1190";
  inputs.src-opentdb-1_1_1.repo = "nim-opentmdb";
  inputs.src-opentdb-1_1_1.ref = "refs/tags/1.1.1";
  
  outputs = { self, nixpkgs, src-opentdb-1_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opentdb-1_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-opentdb-1_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}