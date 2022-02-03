{
  description = ''Build Postgres extensions in Nim.'';
  inputs.src-pgxcrown-v0_1_31.flake = false;
  inputs.src-pgxcrown-v0_1_31.type = "github";
  inputs.src-pgxcrown-v0_1_31.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_1_31.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_1_31.ref = "refs/tags/v0.1.31";
  
  outputs = { self, nixpkgs, src-pgxcrown-v0_1_31, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_1_31;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pgxcrown-v0_1_31"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}