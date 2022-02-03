{
  description = ''Build Postgres extensions in Nim.'';
  inputs.src-pgxcrown-v0_1_33.flake = false;
  inputs.src-pgxcrown-v0_1_33.type = "github";
  inputs.src-pgxcrown-v0_1_33.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_1_33.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_1_33.ref = "refs/tags/v0.1.33";
  
  outputs = { self, nixpkgs, src-pgxcrown-v0_1_33, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_1_33;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pgxcrown-v0_1_33"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}