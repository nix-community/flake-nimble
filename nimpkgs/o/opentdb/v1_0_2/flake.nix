{
  description = ''Wrapper around the open trivia db api'';
  inputs.src-opentdb-v1_0_2.flake = false;
  inputs.src-opentdb-v1_0_2.type = "github";
  inputs.src-opentdb-v1_0_2.owner = "ire4ever1190";
  inputs.src-opentdb-v1_0_2.repo = "nim-opentmdb";
  inputs.src-opentdb-v1_0_2.ref = "refs/tags/v1.0.2";
  
  outputs = { self, nixpkgs, src-opentdb-v1_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opentdb-v1_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-opentdb-v1_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}