{
  description = ''Build Postgres extensions in Nim.'';
  inputs.src-pgxcrown-v0_1_39.flake = false;
  inputs.src-pgxcrown-v0_1_39.type = "github";
  inputs.src-pgxcrown-v0_1_39.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_1_39.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_1_39.ref = "refs/tags/v0.1.39";
  
  outputs = { self, nixpkgs, src-pgxcrown-v0_1_39, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_1_39;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pgxcrown-v0_1_39"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}