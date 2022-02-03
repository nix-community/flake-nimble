{
  description = ''Immature Newsgroup NNTP server using SQLite as backend'';
  inputs.src-nimnews-v0_0_0.flake = false;
  inputs.src-nimnews-v0_0_0.type = "github";
  inputs.src-nimnews-v0_0_0.owner = "mildred";
  inputs.src-nimnews-v0_0_0.repo = "nimnews";
  inputs.src-nimnews-v0_0_0.ref = "refs/tags/v0.0.0";
  
  outputs = { self, nixpkgs, src-nimnews-v0_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimnews-v0_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimnews-v0_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}